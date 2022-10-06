import 'package:my_oga_mechanic/imports.dart';

const Color teal = Color(0xFFF2C94C);

List carImageList = <String>[
  'assets/car_images/car_img_one.png',
  'assets/car_images/car_img_two.png',
  'assets/car_images/car_img_three.png'
];

List mechanicData = <Map>[
  {
    'service provider': 'Ogene Auto Shop',
    'rating': 4.6,
    'proximity': 0.3,
  },
  {
    'service provider': 'Ogene Auto Shop',
    'rating': 4.6,
    'proximity': 0.3,
  },
  {
    'service provider': 'Ogene Auto Shop',
    'rating': 4.6,
    'proximity': 0.3,
  },
  {
    'service provider': 'Ogene Auto Shop',
    'rating': 4.6,
    'proximity': 0.3,
  },
  {
    'service provider': 'Ogene Auto Shop',
    'rating': 4.6,
    'proximity': 0.3,
  },
];

class CustomTextStyle {
  final largeText = TextStyle(
    color: teal,
    fontSize: 24.0.sp,
  );
  final mediumText = TextStyle(
    color: teal,
    fontSize: 16.0.sp,
  );
}
