import 'package:my_oga_mechanic/cloud%20functions/firebase_auth.dart';
import 'package:my_oga_mechanic/imports.dart';

var verficationIdRecieved = '';
var verifyResponse = '';

trimNumber(String number) {
  if (number.length > 1) {
    var num = number.substring(1);
    var intCode = '+234';
    var fullNum = intCode + num;
    return fullNum;
  } else {
    return '080';
  }
}

class LoginSignUp extends StatefulWidget {
  const LoginSignUp({super.key});

  @override
  State<LoginSignUp> createState() => _LoginSignUpState();
}

class _LoginSignUpState extends State<LoginSignUp> {
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
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      });

                  await verifyNumber(
                    trimNumber(
                      phoneNumberController.phoneNumberController.value,
                    ),
                  );
                  Future.delayed(Duration(seconds: 8), () {
                    setState(() {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Padding(
                          padding: EdgeInsets.all(16.0.sp),
                          child: Text(
                            verifyResponse,
                            style: CustomTextStyle().largeText,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    });
                  });
                  // await checkUser(trimNumber(
                  //     phoneNumberController.phoneNumberController.value));
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
