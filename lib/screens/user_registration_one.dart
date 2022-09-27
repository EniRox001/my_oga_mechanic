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
              children: [
                Text(
                  UserRegistrationOneText().userRegistrationTitle.toUpperCase(),
                  style: CustomTextStyle().largeText,
                ),
                CircleAvatar(
                  backgroundColor: teal,
                  radius: 85.sp,
                  child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 83.sp,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(
                            Icons.add,
                            color: teal,
                          ),
                          Text(
                            UserRegistrationOneText()
                                .profilePictureText
                                .toTitleCase(),
                          ),
                        ],
                      )),
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationOneText()
                      .phoneNumberControllerHintText
                      .toUpperCase(),
                  controller:
                      UserRegistrationOneControllers().phoneNumberController,
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationOneText()
                      .emailAddressControllerHintText
                      .toUpperCase(),
                  controller:
                      UserRegistrationOneControllers().emailAddressController,
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationOneText()
                      .homeAddressControllerHintText
                      .toUpperCase(),
                  controller:
                      UserRegistrationOneControllers().emailAddressController,
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationOneText()
                      .officeAddressControllerHintText
                      .toUpperCase(),
                  controller:
                      UserRegistrationOneControllers().officeAddressController,
                ),
                SizedBox(
                  height: 200.0.h,
                ),
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/user_registration_two');
                  },
                  text: UserRegistrationOneText().nextButtonText.toUpperCase(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
