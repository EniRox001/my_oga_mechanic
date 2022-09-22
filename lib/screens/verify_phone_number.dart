import 'package:my_oga_mechanic/imports.dart';

class VerifyPhoneNumber extends StatefulWidget {
  const VerifyPhoneNumber({super.key});

  @override
  State<VerifyPhoneNumber> createState() => _VerifyPhoneNumberState();
}

class _VerifyPhoneNumberState extends State<VerifyPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    final fullHeight = MediaQuery.of(context).size.height;
    final fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackgroundWidget(
        gradientStops: const [
          0.3,
          0.6,
          0.8,
        ],
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/myOgaMechanicLogo.png',
                height: fullHeight / 3,
                width: fullWidth / 3,
              ),
              Text(
                VerifyPhoneNumberText().enterCodeSentText,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                VerifyPhoneNumberText().phoneNumber,
                style: Theme.of(context).textTheme.headline5,
              ),
              Padding(
                padding: EdgeInsets.all(48.0.sp),
                child: TextFormField(
                  style: ThemeData.light().textTheme.subtitle2,
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: VerifyPhoneNumberText().inputFieldHintText,
                    hintStyle: ThemeData.light().textTheme.subtitle2,
                  ),
                ),
              ),
              Text(
                VerifyPhoneNumberText().resendOtpText,
                style: TextStyle(
                  color: const Color(0xFFF2C94C),
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 32.0.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF2C94C),
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  Get.toNamed('/user_registration_one');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 16.0.h, horizontal: 28.0.w),
                  child: Text(
                    VerifyPhoneNumberText().verifyButtonText,
                    style: ThemeData.light().textTheme.headline6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
