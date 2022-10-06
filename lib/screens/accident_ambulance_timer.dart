import 'package:my_oga_mechanic/imports.dart';

class AccidentAmbulanceTimer extends StatelessWidget {
  const AccidentAmbulanceTimer({super.key});

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
            padding: EdgeInsets.all(
              32.0.sp,
            ),
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
                const WCarNameWidget(),
                const WCarDetailsWidget(),
                Image.asset(
                  'assets/car_images/ambulance.png',
                  height: Get.height / 4,
                ),
                Text(
                  'Medical assitance is on it\'s way. Keep calm while we get to you.',
                  style: CustomTextStyle().largeText,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Estimated Wait Time'.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                TimerCountdown(
                  format: CountDownTimerFormat.minutesSeconds,
                  endTime: DateTime.now().add(
                    Duration(
                      seconds: 5,
                    ),
                  ),
                  onEnd: () {
                    print('Show something');
                  },
                ),
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/accident_ambulance_option');
                  },
                  text: 'next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
