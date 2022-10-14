import 'package:my_oga_mechanic/imports.dart';
import 'package:flutter_termii/flutter_termii.dart';

int mechanicOtpMain = 0;
int mechanicAgreedPriceMain = 0;
String otpArrivedMessage = '';

generateOtp() {
  String mechanicOtp = randomNumeric(5);
  print('arrived otp: $mechanicOtp');
  mechanicOtpMain = int.parse(mechanicOtp);
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

sendMessage() {
  try {
    var africasTalking = AfricasTalking('sandbox',
        'e04b0741c543180f4e08d853654a08e26a978584429999982c297c4f75d1d7ad');

    africasTalking.isLive = false;

    Sms sms = africasTalking.sms('25675');

    sms.send(
      message: 'Testing the api service',
      to: [
        '+2348108080358',
      ],
    );

    sms.fetchMessages(lastReceivedId: '1');
  } catch (e) {
    print(e);
  }
}
