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
    GetPage(
      name: '/vehicle_registration_one',
      page: () => const VehicleRegistrationOne(),
    ),
    GetPage(
      name: '/vehicle_registration_two',
      page: () => const VehicleRegistrationTwo(),
    ),
    GetPage(
      name: '/dashboard_one',
      page: () => const DashboardOne(),
    ),
    GetPage(
      name: '/dashboard_two',
      page: () => const DashboardTwo(),
    ),
    GetPage(
      name: '/services_one',
      page: () => const ServicesOne(),
    ),
    GetPage(
      name: '/service_request',
      page: () => const ServiceRequest(),
    ),
    GetPage(
      name: '/service_mechanic',
      page: () => const ServiceMechanic(),
    ),
    GetPage(
      name: '/services_arrived',
      page: () => const ServicesArrived(),
    ),
    GetPage(
      name: '/services_repair_nature',
      page: () => const ServiceRepairNature(),
    ),
    GetPage(
      name: '/services_agree_amount',
      page: () => const ServicesAgreeAmount(),
    ),
    GetPage(
      name: '/services_agreed_otp',
      page: () => const ServicesAgreedOtp(),
    ),
    GetPage(
      name: '/services_repair_completed',
      page: () => const ServicesRepairCompleted(),
    ),
    GetPage(
      name: '/services_rate_mechanic',
      page: () => const ServicesRateMechanic(),
    ),
    GetPage(
      name: '/accident_services_selection',
      page: () => const AccidentServiceSelection(),
    ),
    GetPage(
      name: '/accident_services_selection_medical',
      page: () => const AccidentServiceSelectionMedical(),
    ),
  ];
}
