import 'package:my_oga_mechanic/imports.dart';

class ServicesArrived extends StatelessWidget {
  const ServicesArrived({super.key});

  @override
  Widget build(BuildContext context) {
    OtpArrived otpArrived = Get.put(OtpArrived());
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'you have arrived!'.toUpperCase(),
                  style: CustomTextStyle().largeText,
                ),
                Text(
                  'Please, enter the machant  code sent to: 08022334455',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 5,
                  onChanged: (value) {
                    otpArrived.onOtpArrivedChanged(value);
                  },
                  keyboardType: TextInputType.number,
                ),
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/services_repair_nature');
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
