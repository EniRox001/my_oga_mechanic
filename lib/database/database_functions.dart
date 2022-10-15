// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:my_oga_mechanic/imports.dart';

ObjectId userUniqueId = ObjectId();

var userCollection;
var carsCollection;
var mechanicCollection;
var user;
var cars;
var mechanics;
var selectedMechanic;

var quickFixMessage = '';

connectDB() async {
  var db = await Db.create(
      "mongodb+srv://enirox:Pwafukadi@cluster0.4iczrsa.mongodb.net/?retryWrites=true&w=majority");
  await db.open();
  final userDatabase = db.collection('users');
  final carsDatabase = db.collection('cars');
  final mechanicDatabase = db.collection('mechanics');

  userCollection = userDatabase;
  carsCollection = carsDatabase;
  mechanicCollection = mechanicDatabase;
}

getMechanics(String model, String workPart) async {
  mechanicCollection
      .find(
        {
          'vehicle brand': model,
          'areas of specialization': workPart,
        },
      )
      .toList()
      .then(
        (value) {
          mechanics = value;
          print(mechanics.length);
          Get.toNamed('service_request');
        },
      );
}

acceptUserRequest(context, value) async {
  Future.delayed(
    Duration(seconds: 4),
    () {
      selectedMechanic = value;
      Navigator.pop(context);
      Get.toNamed('/quick_fix');
    },
  );
}

declineUserRequest(context) async {
  Future.delayed(
    Duration(seconds: 4),
    () {
      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.pop(context);
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Mechanic has declined request',
              style: CustomTextStyle().largeText,
              textAlign: TextAlign.center,
            ),
          );
        },
      );
    },
  );
}

requestMechanicQuickFix(model, workPart, context) async {
  mechanicCollection
      .find(
        {
          'vehicle brand': model,
          'areas of specialization': workPart,
        },
      )
      .toList()
      .then(
        (value) {
          if (value.length > 0) {
            return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      'Mechanic Found',
                      style: CustomTextStyle().largeText,
                      textAlign: TextAlign.center,
                    ),
                    content: WTextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const SizedBox(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                        );
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => Padding(
                            padding: EdgeInsets.all(16.0.sp),
                            child: Text(
                              'Mechanic requested. \nPlease hold on...',
                              style: CustomTextStyle().largeText,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                        acceptUserRequest(context, value[0]);
                      },
                      text: 'Send Request?',
                    ),
                  );
                });
          } else {
            return showModalBottomSheet(
              context: context,
              builder: (context) => Padding(
                padding: EdgeInsets.all(16.0.sp),
                child: Text(
                  'No nearby mechanic found',
                  style: CustomTextStyle().largeText,
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }
        },
      );
}

checkUser(String number) async {
  userCollection
      .find(
        {'phone number': number},
      )
      .toList()
      .then(
        (value) {
          if (value.length > 0) {
            user = value[0];
            print(value[0]);
            getUserCars();
          } else {
            Get.toNamed('/user_registration_one');
          }
        },
      );
}

getUserCars() {
  carsCollection
      .find(
        {'id': user['id']},
      )
      .toList()
      .then(
        (value) {
          if (value.length > 0) {
            cars = value[0];
            print(value[0]);
            Get.toNamed('/dashboard_two');
          } else {
            print('collection was not found');
          }
        },
      );
}

createUser() async {
  await userCollection.insert(
    User(
      userUniqueId,
      phoneNumberController.phoneNumberController.value.trim().toLowerCase(),
      profilePictureUrl,
      userRegistrationOneControllers.emailAddressController.value
          .trim()
          .toLowerCase(),
      userRegistrationOneControllers.homeAddressController.value
          .trim()
          .toLowerCase(),
      userRegistrationOneControllers.officeAddressController.value
          .trim()
          .toLowerCase(),
      userRegistrationTwoControllers.firstNameController.value
          .trim()
          .toLowerCase(),
      userRegistrationTwoControllers.lastNameController.value
          .trim()
          .toLowerCase(),
      userRegistrationTwoControllers.dateOfBirthController.value
          .trim()
          .toLowerCase(),
      driversLicenseRegistrationControllers.driversLicenseController.value
          .trim()
          .toLowerCase(),
    ).toMap(),
  );
}

Future createCar() async {
  await carsCollection.insert(
    Car(
      userUniqueId,
      vehicleRegistrationOneControllers.makeController.value
          .trim()
          .toLowerCase(),
      vehicleRegistrationOneControllers.modelController.value
          .trim()
          .toLowerCase(),
      vehicleRegistrationOneControllers.yearController.value,
      vehicleRegistrationOneControllers.bodyBuildController.value
          .trim()
          .toLowerCase(),
      vehicleRegistrationOneControllers.plateNumberController.value
          .trim()
          .toLowerCase(),
      vehicleRegistrationOneControllers.carColor.value.trim().toLowerCase(),
      vehicleRegistrationTwoControllers.roadWorthinessController.value
          .trim()
          .toLowerCase(),
      vehicleRegistrationTwoControllers.vehicleLicenseController.value
          .trim()
          .toLowerCase(),
      vehicleRegistrationTwoControllers.insuranceLicenseController.value
          .trim()
          .toLowerCase(),
    ).toMap(),
  );
}

addMechanicCarCue() {
  try {
    mechanicCollection.update(
      selectedMechanic,
      modify.set(
        'cars in cue',
        selectedMechanic['cars in cue'] + 1,
      ),
    );
  } on Exception catch (e) {
    print(e);
  }
}

removeMechanicCarCue() {
  mechanicCollection.update(
    selectedMechanic,
    modify.set(
      'cars in cue',
      selectedMechanic['cars in cue'] - 1,
    ),
  );
}
