import 'package:my_oga_mechanic/imports.dart';

FirebaseAuth auth = FirebaseAuth.instance;

verifyNumber(String number) async {
  auth.verifyPhoneNumber(
    phoneNumber: number,
    verificationCompleted: (PhoneAuthCredential credential) {
      FirebaseAuth.instance
          .signInWithCredential(credential)
          .then((value) => print('number successfully verified'));
    },
    verificationFailed: (FirebaseAuthException e) {
      print(e.message);
    },
    codeSent: (String verificationId, int? resendToken) {
      verficationIdRecieved = verificationId;
      print("verificationId $verificationId");
    },
    codeAutoRetrievalTimeout: (String verificationId) {},
  );
}

verifyCode(String code) async {
  PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verficationIdRecieved, smsCode: code);
  await auth.signInWithCredential(credential).then((value) {
    print('you are logged in successfully');
  });
}
