import 'package:my_oga_mechanic/imports.dart';

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({super.key});

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
                LoginSignUpText().enterPhoneNumber,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Padding(
                padding: EdgeInsets.all(48.0.sp),
                child: Obx(
                  () => TextFormField(
                    onChanged: (String value) {
                      phoneNumberController.onPhoneNumberChanged(value);
                    },
                    style: ThemeData.light().textTheme.subtitle2,
                    initialValue:
                        phoneNumberController.phoneNumberController.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: LoginSignUpText().inputFieldHintText,
                      hintStyle: ThemeData.light().textTheme.subtitle2,
                    ),
                    keyboardType: TextInputType.number,
                  ),
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
                  await checkUser(
                    phoneNumberController.phoneNumberController.value,
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 16.0.h, horizontal: 28.0.w),
                  child: Text(
                    LoginSignUpText().buttonText,
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
