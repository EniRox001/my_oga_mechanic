import 'package:my_oga_mechanic/imports.dart';

class LoginSignUpControllers extends GetxController {
  var phoneNumberController = ''.obs;
  onPhoneNumberChanged(String value) {
    phoneNumberController.value = value;
  }
}

class VerifyPhoneNumberControllers extends GetxController {
  var otpController = ''.obs;
  onOtpChanged(String value) {
    otpController.value = value;
  }
}

class UserRegistrationOneControllers {
  var phoneNumberController = ''.obs;
  onPhoneNumberChanged(String value) {
    phoneNumberController.value = value;
  }

  var emailAddressController = ''.obs;
  onEmailAddressChanged(String value) {
    emailAddressController.value = value;
  }

  var homeAddressController = ''.obs;
  onHomeAddressChanged(String value) {
    homeAddressController.value = value;
  }

  var officeAddressController = ''.obs;
  onOfficeAddressChanged(String value) {
    officeAddressController.value = value;
  }
}

class UserRegistrationTwoControllers extends GetxController {
  var firstNameController = ''.obs;
  onFirstNameChanged(String value) {
    firstNameController.value = value;
  }

  var lastNameController = ''.obs;
  onLastNameChanged(String value) {
    lastNameController.value = value;
  }

  var dateOfBirthController =
      UserRegistrationTwoText().dateOfBirthControllerHintText.toUpperCase().obs;

  Future<void> onDateOfBirthChanged(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != DateTime.now()) {
      dateOfBirthController.value = picked.toString();
    }
  }
}

class DriversLicenseRegistrationControllers {
  var driversLicenseController = ''.obs;
  onDriversLicenseControllerChanged(String value) {
    driversLicenseController.value = value;
  }
}

class VehicleRegistrationOneControllers {
  var makeController = 'Toyota'.obs;
  onMakeControllerChange(String value) {
    makeController.value = value;
  }

  var modelController = 'Camry'.obs;
  onModelControllerChange(String value) {
    modelController.value = value;
  }

  var yearController = 2000.obs;
  Future<void> onYearControllerChanged(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Select Year"),
          content: SizedBox(
            // Need to use container to add size constraint.
            width: 300,
            height: 300,
            child: YearPicker(
              firstDate: DateTime(DateTime.now().year - 100, 1),
              lastDate: DateTime(DateTime.now().year + 100, 1),
              initialDate: DateTime.now(),
              // save the selected date to _selectedDate DateTime variable.
              // It's used to set the previous selected date when
              // re-showing the dialog.
              selectedDate: DateTime.now(),
              onChanged: (DateTime dateTime) {
                // close the dialog when year is selected.
                Navigator.pop(context);

                yearController.value = dateTime.year;
              },
            ),
          ),
        );
      },
    );
  }

  var bodyBuildController = ''.obs;
  onBodyBuildControllerChange(String value) {
    bodyBuildController.value = value;
  }

  var pickerColor = const Color(0xff443a49).obs;
  var currentColor = const Color(0xff443a49).obs;
  Future<void> onColorControllerChange(BuildContext context) async {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Choose Color'),
          content: ColorPicker(
            pickerColor: pickerColor.value,
            onColorChanged: (color) {
              pickerColor.value = color;
            },
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                currentColor = pickerColor;
                Navigator.of(context).pop();
              },
              child: const Text(
                'Got it',
              ),
            )
          ],
        );
      },
    );
  }

  var plateNumberController = '---'.obs;
  onPlateNumberControllerChange(String value) {
    plateNumberController.value = value;
  }
}

class VehicleRegistrationTwoControllers extends GetxController {
  var roadWorthinessController = ''.obs;
  onRoadWorthinessControllerChanged(String value) {
    roadWorthinessController.value = value;
  }

  var vehicleLicenseController = ''.obs;
  onVehicleLicenseController(String value) {
    roadWorthinessController.value = value;
  }

  var insuranceLicenseController = ''.obs;
  onInsuranceLicenseControllerChanged(String value) {
    insuranceLicenseController.value = value;
  }
}
