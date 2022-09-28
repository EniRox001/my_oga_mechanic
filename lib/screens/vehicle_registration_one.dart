import 'package:my_oga_mechanic/imports.dart';

class VehicleRegistrationOne extends StatefulWidget {
  const VehicleRegistrationOne({super.key});

  @override
  State<VehicleRegistrationOne> createState() => _VehicleRegistrationOneState();
}

class _VehicleRegistrationOneState extends State<VehicleRegistrationOne> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Vehicle Registration Screen',
        ),
      ),
    );
  }
}
