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
      name: '/accident_ambulance_selection',
      page: () => const AccidentAmbulanceSelection(),
    ),
    GetPage(
      name: '/accident_ambulance_timer',
      page: () => const AccidentAmbulanceTimer(),
    ),
    GetPage(
      name: '/accident_ambulance_option',
      page: () => const AccidentAmbulanceOptions(),
    ),
    GetPage(
      name: '/accident_image_capture',
      page: () => const AccidentImageCapture(),
    ),
    GetPage(
      name: '/accident_other_vehicles',
      page: () => const AccidentOtherVehicles(),
    ),
    GetPage(
      name: '/accident_other_vehicles_query',
      page: () => const AccidentOtherVehiclesQuery(),
    ),
    GetPage(
      name: '/accident_other_vehicle_image',
      page: () => const AccidentOtherVehicleImageCapture(),
    ),
    GetPage(
      name: '/accident_tow_truck_query',
      page: () => const AccidentTowTruckQuery(),
    ),
    GetPage(
      name: '/accident_tow_truck',
      page: () => const AccidentTowTruck(),
    ),
    GetPage(
      name: '/quick_fix_category',
      page: () => const QuickFixCategory(),
    ),
    GetPage(
      name: '/quick_fix',
      page: () => const QuickFix(),
    ),
    GetPage(
      name: '/menu_screen',
      page: () => const MenuScreen(),
    ),
    GetPage(
      name: '/menu_add_edit_vehicles',
      page: () => const MenuAddEditVehicles(),
    ),
    GetPage(
      name: '/menu_vehicle_profile',
      page: () => const MenuVehicleProfile(),
    ),
    GetPage(
      name: '/menu_edit_user_profile',
      page: () => const MenuEditUserProfile(),
    ),
  ];
}
