import 'package:my_oga_mechanic/imports.dart';

class QuickFix extends StatelessWidget {
  const QuickFix({super.key});

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
                Text(
                  'A mechanic is on his way',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const WSelectedCarWidget(),

                Text(
                  'please wait',
                  style: Theme.of(context).textTheme.headline4,
                ),

                Text(
                  'You are number',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  selectedMechanic['cars in cue'].toString(),
                  style: CustomTextStyle().largeText,
                ),
                // TimerCountdown(
                //   format: CountDownTimerFormat.minutesSeconds,
                //   endTime: DateTime.now().add(
                //     const Duration(
                //       minutes: 1,
                //     ),
                //   ),
                //   onEnd: () {},
                // ),
                WTextButton(
                  onPressed: () {
                    callNumber(selectedMechanic['phone'].toString());
                  },
                  text: 'call mechanic',
                ),
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/dashboard_two');
                  },
                  text: 'done',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
