import 'package:my_oga_mechanic/imports.dart';

class UserRegistrationTwo extends StatelessWidget {
  const UserRegistrationTwo({super.key});

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
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationTwoText()
                      .lastNameControllerHintText
                      .toUpperCase(),
                  onChanged: (value) {
                    userRegistrationTwoControllers.onLastNameChanged(value);
                  },
                  keyboardType: TextInputType.text,
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
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/driver_license_registration');
                  },
                  text: UserRegistrationTwoText().nextButtonText.toUpperCase(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
