import 'package:my_oga_mechanic/imports.dart';

final ImagePicker profilePicturePicker = ImagePicker();
final cloudinary = CloudinaryPublic('myogamechanic', 'kf3reywm', cache: false);

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
                Container(
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
                        padding: EdgeInsets.symmetric(
                            vertical: 24.0.sp, horizontal: 16.0.sp),
                        child: Text(
                          trimNumber(phoneNumberController
                              .phoneNumberController.value),
                          style: TextStyle(
                              color: Colors.white70, fontSize: 22.0.sp),
                        ),
                      )
                    ],
                  ),
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationOneText()
                      .emailAddressControllerHintText
                      .toUpperCase(),
                  onChanged: (value) {
                    userRegistrationOneControllers.onEmailAddressChanged(value);
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationOneText()
                      .homeAddressControllerHintText
                      .toUpperCase(),
                  onChanged: (value) {
                    userRegistrationOneControllers.onHomeAddressChanged(value);
                  },
                  keyboardType: TextInputType.text,
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
