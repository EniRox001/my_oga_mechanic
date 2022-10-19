import 'package:my_oga_mechanic/cloud%20functions/age_calculator.dart';
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
                  UserRegistrationTwoText().userRegistrationTitle.toUpperCase(),
                  style: CustomTextStyle().largeText,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    profilePictureUrl,
                    scale: 2,
                  ),
                  radius: 70,
                ),
                Text(
                  UserRegistrationTwoText().userRegistrationPageText,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationTwoText()
                      .firstNameControllerHintText
                      .toUpperCase(),
                  onChanged: (value) {
                    userRegistrationTwoControllers.onFirstNameChanged(value);
                  },
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (GetUtils.isLengthLessThan(value, 2)) {
                      return 'Enter a valid first name';
                    }
                  },
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationTwoText()
                      .lastNameControllerHintText
                      .toUpperCase(),
                  onChanged: (value) {
                    userRegistrationTwoControllers.onLastNameChanged(value);
                  },
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (GetUtils.isLengthLessThan(value, 2)) {
                      return 'Enter a valid last name';
                    }
                  },
                ),
                Text(
                  UserRegistrationTwoText()
                      .dateOfBirthText
                      .toUpperCase()
                      .toUpperCase(),
                  style: TextStyle(
                    color: const Color(0xFFF2C94C),
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    userRegistrationTwoControllers
                        .onDateOfBirthChanged(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: teal,
                        width: 3.0.w,
                      ),
                      borderRadius: BorderRadius.circular(15.0.sp),
                      color: Colors.black87,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0.sp),
                          child: Obx(
                            () => Text(
                              userRegistrationTwoControllers
                                  .dateOfBirthController.string,
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 22.0.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                guestRegistration
                    ? WTextButton(
                        onPressed: () async {
                          await createUser();
                          Future.delayed(Duration(seconds: 10), () {
                            guestRegistration = false;
                            Get.toNamed('/accident_other_vehicle_image');
                          });
                        },
                        text: UserRegistrationTwoText()
                            .nextButtonText
                            .toUpperCase(),
                      )
                    : WTextButton(
                        onPressed: () {
                          // Get.toNamed('/driver_license_registration');
                        },
                        text: UserRegistrationTwoText()
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
