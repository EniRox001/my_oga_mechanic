import 'package:my_oga_mechanic/imports.dart';

class Car {
  ObjectId id;
  String make;
  String model;
  int year;
  String bodyBuild;
  String plateNumber;
  String color;
  String roadWorthiness;
  String vehicleLicense;
  String insurance;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'make': make,
      'model': model,
      'year': year,
      'body build': bodyBuild,
      'plate number': plateNumber,
      'color': color,
      'road worthiness': roadWorthiness,
      'vehicle license': vehicleLicense,
      'insurance': insurance
    };
  }

  Car(
      this.id,
      this.make,
      this.model,
      this.year,
      this.bodyBuild,
      this.plateNumber,
      this.color,
      this.roadWorthiness,
      this.vehicleLicense,
      this.insurance);
}
