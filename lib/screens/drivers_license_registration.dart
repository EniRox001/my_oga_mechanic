import 'package:my_oga_mechanic/imports.dart';

class DriversLicenseRegistration extends StatefulWidget {
  const DriversLicenseRegistration({super.key});

  @override
  State<DriversLicenseRegistration> createState() =>
      _DriversLicenseRegistrationState();
}

class _DriversLicenseRegistrationState
    extends State<DriversLicenseRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  DriversLicenseRegistrationText()
                      .driversLicenseRegistrationTitle
                      .toUpperCase(),
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
                  DriversLicenseRegistrationText()
                      .driversLicenseRegistrationPageText,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                WRegistrationFieldTextField(
                  hintText: DriversLicenseRegistrationText()
                      .driversLicenseNumberHintText
                      .toUpperCase(),
                  controller: DriversLicenseRegistrationControllers()
                      .driversLicenseController,
                ),
                SizedBox(
                  height: 100.0.h,
                ),
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/vehicle_registration_one');
                  },
                  text: DriversLicenseRegistrationText()
                      .nextButtonText
                      .toUpperCase(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
