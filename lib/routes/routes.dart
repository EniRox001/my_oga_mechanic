import 'package:my_oga_mechanic/imports.dart';

class Routes {
  final getPage = [
    GetPage(
      name: '/login_signup',
      page: () => const LoginSignUp(),
    ),
    GetPage(
      name: '/verify_phone_number',
      page: () => const VerifyPhoneNumber(),
    ),
    GetPage(
      name: '/user_registration_one',
      page: () => const UserRegistrationOne(),
    ),
    GetPage(
      name: '/user_registration_two',
      page: () => const UserRegistrationTwo(),
    ),
    GetPage(
      name: '/driver_license_registration',
      page: () => const DriversLicenseRegistration(),
    ),
  ];
}
