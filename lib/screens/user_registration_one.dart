import 'package:my_oga_mechanic/imports.dart';

final ImagePicker profilePicturePicker = ImagePicker();
final cloudinary = CloudinaryPublic('myogamechanic', 'kf3reywm', cache: false);

class UserRegistrationOne extends StatefulWidget {
  const UserRegistrationOne({super.key});

  @override
  State<UserRegistrationOne> createState() => _UserRegistrationOneState();
}

var selectedImage = 'unset';
var profilePictureUrl = '';

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
                GestureDetector(
                  onTap: () async {
                    setState(() {
                      selectedImage = 'setting';
                    });
                    await setProfilePicture();
                    setState(() {
                      selectedImage = 'set';
                    });
                  },
                  child: const WImagePicker(),
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationOneText()
                      .phoneNumberControllerHintText
                      .toUpperCase(),
                  onChanged: (value) {
                    userRegistrationOneControllers.onPhoneNumberChanged(value);
                  },
                  keyboardType: TextInputType.number,
                  inputFormatter: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
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

class WImagePicker extends StatelessWidget {
  const WImagePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (selectedImage == 'unset') {
      return CircleAvatar(
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
                UserRegistrationOneText().profilePictureText.toTitleCase(),
              ),
            ],
          ),
        ),
      );
    } else if (selectedImage == 'setting') {
      return const CircularProgressIndicator();
    } else {
      return CircleAvatar(
        backgroundImage: NetworkImage(
          profilePictureUrl,
          scale: 2,
        ),
        radius: 70,
      );
    }
  }
}
