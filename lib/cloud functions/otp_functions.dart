import 'package:my_oga_mechanic/imports.dart';
import 'package:flutter_termii/flutter_termii.dart';

int mechanicOtpMain = 0;
int mechanicAgreedPriceOtpMain = 0;
String otpArrivedMessage = '';
String agreedOtpPriceMessage = '';

generateOtp() {
  String mechanicOtp = randomNumeric(5);
  print('arrived otp: $mechanicOtp');
  mechanicOtpMain = int.parse(mechanicOtp);
}

generatePriceOtp() {
  String mechanicPriceOtp = randomNumeric(5);
  print('mechanic price otp: $mechanicPriceOtp');
  mechanicAgreedPriceOtpMain = int.parse(mechanicPriceOtp);
}

validateMechanicPriceOtp(int otp) async {
  print(otp);
  if (otp == mechanicAgreedPriceOtpMain) {
    print('correct OTP was provided');
    agreedOtpPriceMessage = 'Correct OTP provided';
    await addMechanicCarCue();
    Get.toNamed('/services_repair_completed');
  } else {
    agreedOtpPriceMessage = 'Please enter the correct OTP';
  }
}

validateMechanicOtp(int otp) {
  if (otp == mechanicOtpMain) {
    print('correct otp provided');
    otpArrivedMessage = 'Correct OTP provided';
    Get.toNamed('/services_repair_nature');
  } else {
    otpArrivedMessage = 'Please enter the correct OTP';
  }
}
