import 'package:my_oga_mechanic/imports.dart';

class ServiceRequest extends StatelessWidget {
  const ServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundWidget(
        gradientStops: [
          0.1,
          0.2,
          0.8,
        ],
        child: Center(
          child: Text(
            'Service request',
          ),
        ),
      ),
    );
  }
}
