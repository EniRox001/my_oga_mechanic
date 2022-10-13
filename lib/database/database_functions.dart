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
