import 'package:my_oga_mechanic/cloud%20functions/firebase_auth.dart';
import 'package:my_oga_mechanic/imports.dart';

class VerifyPhoneNumber extends StatefulWidget {
  const VerifyPhoneNumber({super.key});

  @override
  State<VerifyPhoneNumber> createState() => _VerifyPhoneNumberState();
}

class _VerifyPhoneNumberState extends State<VerifyPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    final fullHeight = Get.height;
    final fullWidth = Get.width;
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
              Obx(
                () => Text(
                  '${phoneNumberController.phoneNumberController}',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(48.0.sp),
                child: TextFormField(
                  onChanged: (String value) {
                    verifyPhoneNumberControllers.onOtpChanged(value);
                  },
                  initialValue:
                      verifyPhoneNumberControllers.otpController.value,
                  style: ThemeData.light().textTheme.subtitle2,
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
                onPressed: () async {
                  // Get.toNamed('/user_registration_one');
                  CircularProgressIndicator();
                  await verifyCode(
                      verifyPhoneNumberControllers.otpController.value);
                  setState(() {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Padding(
                        padding: EdgeInsets.all(16.0.sp),
                        child: Text(
                          codeMessage,
                          style: CustomTextStyle().largeText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  });
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
