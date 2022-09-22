import 'package:my_oga_mechanic/imports.dart';

class Routes {
  final getPage = [
    GetPage(name: '/login_signup', page: () => const LoginSignUp()),
    GetPage(
        name: '/verify_phone_number', page: () => const VerifyPhoneNumber()),
  ];
}
