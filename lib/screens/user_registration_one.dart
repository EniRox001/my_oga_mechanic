import 'package:my_oga_mechanic/imports.dart';

class UserRegistrationOne extends StatefulWidget {
  const UserRegistrationOne({super.key});

  @override
  State<UserRegistrationOne> createState() => _UserRegistrationOneState();
}

final TextEditingController phoneNumberRegistrationController =
    TextEditingController();

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
                Text('User Registration'.toUpperCase(),
                    style: CustomTextStyle().largeText),
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
                            'profile picture'.toTitleCase(),
                          ),
                        ],
                      )),
                ),
                WRegistrationFieldTextField(
                  hintText: 'phone number',
                  controller: phoneNumberRegistrationController,
                ),
                WRegistrationFieldTextField(
                  hintText: 'email address',
                  controller: phoneNumberRegistrationController,
                ),
                WRegistrationFieldTextField(
                  hintText: 'home address',
                  controller: phoneNumberRegistrationController,
                ),
                WRegistrationFieldTextField(
                  hintText: 'office address',
                  controller: phoneNumberRegistrationController,
                ),
                SizedBox(
                  height: 200.0.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/user_registration_two');
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black26),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'next'.toUpperCase(),
                          style: CustomTextStyle().largeText,
                        ),
                        // const Icon(
                        //   Icons.arrow_forward_ios,
                        //   color: teal,
                        // )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WRegistrationFieldTextField extends StatelessWidget {
  const WRegistrationFieldTextField({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.sp),
        ),
        filled: true,
        fillColor: Colors.black87,
        hintText: hintText.toUpperCase(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.sp),
          borderSide: BorderSide(
            width: 3.0.w,
            color: teal,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.sp),
          borderSide: BorderSide(
            width: 3.0.w,
            color: teal,
          ),
        ),
      ),
    );
  }
}
