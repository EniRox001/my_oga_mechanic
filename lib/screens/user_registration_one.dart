import 'package:my_oga_mechanic/imports.dart';

final ImagePicker profilePicturePicker = ImagePicker();
bool guestRegistration = false;

class UserRegistrationOne extends StatefulWidget {
  const UserRegistrationOne({super.key});

  @override
  State<UserRegistrationOne> createState() => _UserRegistrationOneState();
}

var profilePictureUrl = '';

class _UserRegistrationOneState extends State<UserRegistrationOne> {
  var selectedImage = false;
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
                GestureDetector(
                  onTap: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                    await setProfilePicture();

                    setState(() {
                      selectedImage = true;
                    });
                    //close the circular dialog
                    Get.back();
                  },
                  child: selectedImage
                      ? CircleAvatar(
                          backgroundImage: NetworkImage(
                            profilePictureUrl,
                            scale: 2,
                          ),
                          radius: 70,
                        )
                      : CircleAvatar(
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
                            ),
                          ),
                        ),
                ),
                guestRegistration
                    ? WRegistrationFieldTextField(
                        hintText: 'phone number',
                        onChanged: userRegistrationOneControllers
                            .phoneNumberController,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          return null;
                        })
                    : const WPhoneNumberFieldWidget(),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationOneText()
                      .emailAddressControllerHintText
                      .toUpperCase(),
                  onChanged: (value) {
                    userRegistrationOneControllers.onEmailAddressChanged(value);
                  },
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (!GetUtils.isEmail(value!)) {
                      return 'Enter a valid email address';
                    }
                  },
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationOneText()
                      .homeAddressControllerHintText
                      .toUpperCase(),
                  onChanged: (value) {
                    userRegistrationOneControllers.onHomeAddressChanged(value);
                  },
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (GetUtils.isLengthLessThan(value, 5)) {
                      return 'Enter a valid Address';
                    }
                  },
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationOneText()
                      .officeAddressControllerHintText
                      .toUpperCase(),
                  onChanged: (value) {
                    userRegistrationOneControllers
                        .onOfficeAddressChanged(value);
                  },
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (GetUtils.isLengthLessThan(value, 5)) {
                      return 'Enter a valid Address';
                    }
                  },
                ),
                SizedBox(
                  height: 200.0.h,
                ),
                WTextButton(
                  onPressed: () async {
                    if ((selectedImage == false)) {
                      print('no image was selected');
                      await setNullProfilePicture();
                    }
                    phoneNumberController.phoneNumberController.value =
                        trimNumber(
                            phoneNumberController.phoneNumberController.value);
                    print(phoneNumberController.phoneNumberController.value);
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
