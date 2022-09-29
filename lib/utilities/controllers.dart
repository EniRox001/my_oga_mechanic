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
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != DateTime.now()) {
      dateOfBirthController.value = picked.toString();
    }
  }
}

class DriversLicenseRegistrationControllers {
  final TextEditingController driversLicenseController =
      TextEditingController();
}

class VehicleRegistrationOneControllers {
  final TextEditingController makeController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController bodyBuildController = TextEditingController();
  final TextEditingController colorController = TextEditingController();
  final TextEditingController plateNumberController = TextEditingController();
}
