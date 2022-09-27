import 'package:my_oga_mechanic/imports.dart';

class UserRegistrationTwo extends StatefulWidget {
  const UserRegistrationTwo({super.key});

  @override
  State<UserRegistrationTwo> createState() => _UserRegistrationTwoState();
}

final firstNameController = TextEditingController();
final lastNameController = TextEditingController();
var dobController = TextEditingController();

class _UserRegistrationTwoState extends State<UserRegistrationTwo> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      String dobText = '${selectedDate.toLocal()}';
      setState(() {
        selectedDate = picked;
        dobController.text = dobText;
      });
    }
  }

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
                  UserRegistrationTwoText().userRegistrationPageText,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationTwoText()
                      .firstNameControllerHintText
                      .toUpperCase(),
                  controller: firstNameController,
                ),
                WRegistrationFieldTextField(
                  hintText: UserRegistrationTwoText()
                      .lastNameControllerHintText
                      .toUpperCase(),
                  controller: lastNameController,
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
                TextFormField(
                  onTap: () {
                    _selectDate(context);
                  },
                  readOnly: true,
                  controller: dobController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0.sp),
                    ),
                    filled: true,
                    fillColor: Colors.black87,
                    hintText: UserRegistrationTwoText()
                        .dateOfBirthControllerHintText
                        .toUpperCase(),
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
                ),
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/driver_license_registration');
                  },
                  text: UserRegistrationTwoText()
                      .dateOfBirthControllerHintText
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
