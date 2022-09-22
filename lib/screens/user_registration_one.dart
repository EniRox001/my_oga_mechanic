import 'package:my_oga_mechanic/imports.dart';

class UserRegistrationOne extends StatefulWidget {
  const UserRegistrationOne({super.key});

  @override
  State<UserRegistrationOne> createState() => _UserRegistrationOneState();
}

class _UserRegistrationOneState extends State<UserRegistrationOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        gradientStops: const [
          0.3,
          0.6,
          0.8,
        ],
        child: Column(
          children: [
            Text(
              'USER REGISTRATION',
            )
          ],
        ),
      ),
    );
  }
}
