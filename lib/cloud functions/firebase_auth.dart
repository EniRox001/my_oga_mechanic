import 'package:my_oga_mechanic/imports.dart';

FirebaseAuth auth = FirebaseAuth.instance;

var verifyNumberMessage = '';

verifyNumber(String number) async {
  try {
    auth.verifyPhoneNumber(
      phoneNumber: number,
      verificationCompleted: (PhoneAuthCredential credential) {
        Get.toNamed('/verify_phone_number');
      },
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        verficationIdRecieved = verificationId;
        print("verificationId $verificationId");
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  } on FirebaseException catch (e) {
    print('error: $e');
  }
}

String codeMessage = '';

verifyCode(String code) async {
  try {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verficationIdRecieved, smsCode: code);
    await auth.signInWithCredential(credential).then(
      (value) async {
        codeMessage = 'Correct code was provided';
        await checkUser(
            trimNumber(phoneNumberController.phoneNumberController.value));
      },
    );
  } on FirebaseAuthException catch (e) {
    print(e.code);
    switch (e.code) {
      case 'invalid-verification-code':
        codeMessage = 'The provided code is invalid';
        break;
      default:
        codeMessage = 'An unknown error occured.';
    }
  }
}
