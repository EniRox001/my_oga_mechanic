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
  var profilePictureBool = true.obs;
  onProfilePictureBoolChanged(bool value) {
    profilePictureBool.value = true;
  }

  var profilePictureUrl = ''.obs;
  onProfilePictureChanged(String value) {
    profilePictureUrl.value = value;
  }

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

int year = 0;
int month = 0;
int day = 0;

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

  Future onDateOfBirthChanged(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now()) {
      dateOfBirthController.value = picked.toString();
      year = int.parse(dateOfBirthController.value.substring(0, 4));
      month = int.parse(dateOfBirthController.value.substring(5, 7));
      day = int.parse(dateOfBirthController.value.substring(8, 10));

      calculateAge();
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
  var makeController = ''.obs;
  onMakeControllerChange(String value) {
    makeController.value = value;
  }

  var modelController = ''.obs;
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

  var carColor = 'Color'.obs;
  onCarColorChanged(String value) {
    carColor.value = value;
  }

  var plateNumberController = ''.obs;
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

class OtpArrivedController extends GetxController {
  var otpArrived = ''.obs;
  onOtpArrivedChanged(String value) {
    otpArrived.value = value;
  }
}

class AgreedPriceController extends GetxController {
  var agreedPrice = ''.obs;
  onAgreedPriceChange(String value) {
    agreedPrice.value = value;
  }

  var agreedPay = false.obs;
  onAgreePay() {
    if (agreedPay.value == true) {
      agreedPay.value = false;
    } else {
      agreedPay.value = true;
    }
  }
}

class PaymentAcceptanceOtp extends GetxController {
  var paymentAcceptanceOtp = ''.obs;
  onPaymentAcceptanceOtp(String value) {
    paymentAcceptanceOtp.value = value;
  }
}

class RateMechanicControllers extends GetxController {
  var communicationController = ''.obs;
  var knowledgeOfIssueController = ''.obs;
  var pricingController = ''.obs;
  var mechanicReviewController = ''.obs;
  onCommunicationControllerChanged(String value) {
    communicationController.value = value;
  }

  onKnowledgeOfIssueControllerChanged(String value) {
    knowledgeOfIssueController.value = value;
  }

  onPricingChanged(String value) {
    pricingController.value = value;
  }

  onMechanicReviewChanged(String value) {
    mechanicReviewController.value = value;
  }
}
