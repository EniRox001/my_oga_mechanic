import 'package:my_oga_mechanic/imports.dart';

launchMaps() async {
  final availableMaps = await MapLauncher.installedMaps;
  print(availableMaps);

  await availableMaps.first.showDirections(destination: Coords(300, 100));
}

launchMap() async {
  MapsLauncher.launchQuery(
      selectedMechanic['address'].toString().toLowerCase());
}
