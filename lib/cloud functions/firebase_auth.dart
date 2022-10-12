import 'package:my_oga_mechanic/imports.dart';

FirebaseAuth auth = FirebaseAuth.instance;

var verifyNumberMessage = '';

verifyNumber(String number) async {
  try {
    await auth.verifyPhoneNumber(
      phoneNumber: number,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        verifyResponse = 'Please enter a valid number';
      },
      codeSent: (String verificationId, int? resendToken) {
        verficationIdRecieved = verificationId;
        print("verificationId $verificationId");
        verifyResponse = 'Valid number provided';
        Get.toNamed('/verify_phone_number');
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
      case 'invalid-verification-id':
        codeMessage = 'Please enter the code';
        break;
      default:
        codeMessage = 'An unknown error occured.';
    }
  }
}
