import 'package:my_oga_mechanic/imports.dart';

bool validAge = false;

calculateAge() {
  DateTime birthday = DateTime(year, month, day);

  var age = AgeCalculator.age(birthday);

  if (age.years < 18) {
    validAge = false;
  } else {
    validAge = true;
  }
}
