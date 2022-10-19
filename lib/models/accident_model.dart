import 'package:my_oga_mechanic/imports.dart';

class Accident {
  ObjectId id;
  bool ambulance;
  List carImages;
  bool otherVehicles;
  List otherVehicleImages;
  bool towTruckRequested;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'ambulance': ambulance,
      'car images': carImages,
      'other vehicles': otherVehicles,
      'other vehicle images': otherVehicleImages,
      'tow truck requested': towTruckRequested,
    };
  }

  Accident(
    this.id,
    this.ambulance,
    this.carImages,
    this.otherVehicles,
    this.otherVehicleImages,
    this.towTruckRequested,
  );
}
