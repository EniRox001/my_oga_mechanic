// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:my_oga_mechanic/imports.dart';

ObjectId userUniqueId = ObjectId();

var userCollection;
var carsCollection;
var user;

connectDB() async {
  var db = await Db.create(
      "mongodb+srv://enirox:Pwafukadi@cluster0.4iczrsa.mongodb.net/?retryWrites=true&w=majority");
  await db.open();
  final userDatabase = db.collection('users');
  final carsDatabase = db.collection('cars');

  userCollection = userDatabase;
  carsCollection = carsDatabase;
}

void checkUser(String number) {
  userCollection
      .find(
        {'phone number': number},
      )
      .toList()
      .then(
        (value) {
          if (value.length > 0) {
            user = value;
            print(value);
          } else {
            Get.toNamed('/user_registration_one');
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
    ),
  );
}

createCar() async {
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
    ),
  );
}
