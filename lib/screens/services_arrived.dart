import 'package:my_oga_mechanic/imports.dart';

class ServicesArrived extends StatelessWidget {
  const ServicesArrived({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                  ],
                ),
                Text(
                  'you have arrived!'.toUpperCase(),
                  style: CustomTextStyle().largeText,
                ),
                Text(
                  'Please, enter the machant  code sent to: ${selectedMechanic['phone'].toString()}',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 5,
                  onChanged: (value) {
                    otpArrivedController.onOtpArrivedChanged(value);
                  },
                  keyboardType: TextInputType.number,
                ),
                WTextButton(
                  onPressed: () async {
                    await validateMechanicOtp(
                        int.parse(otpArrivedController.otpArrived.value));
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Padding(
                        padding: EdgeInsets.all(16.0.sp),
                        child: Text(
                          otpArrivedMessage,
                          style: CustomTextStyle().largeText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                  text: 'next'.toUpperCase(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
