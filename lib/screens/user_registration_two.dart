import 'package:my_oga_mechanic/imports.dart';

class UserRegistrationTwo extends StatefulWidget {
  const UserRegistrationTwo({super.key});

  @override
  State<UserRegistrationTwo> createState() => _UserRegistrationTwoState();
}

class _UserRegistrationTwoState extends State<UserRegistrationTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        gradientStops: const [
          0.1,
          0.2,
          0.8,
        ],
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(32.0.sp),
            child: Column(
              children: <Widget>[
                Text(
                  'user registration'.toUpperCase(),
                  style: CustomTextStyle().largeText,
                ),
                CircleAvatar(
                  radius: 85.0.sp,
                  backgroundColor: Colors.teal,
                  child: CircleAvatar(
                    backgroundImage: const AssetImage(
                      'assets/images/myOgaMechanicLogo.png',
                    ),
                    radius: 83.0.sp,
                  ),
                ),
                Text(
                  'Enter the correct details the matches your drivers license',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
