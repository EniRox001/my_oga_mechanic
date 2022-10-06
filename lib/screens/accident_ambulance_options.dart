import 'package:my_oga_mechanic/imports.dart';

class AccidentAmbulanceOptions extends StatelessWidget {
  const AccidentAmbulanceOptions({super.key});

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
                const WSelectedCarWidget(),
                Text(
                  'Please, hold on, Medical assistance is on the way. as you wait, please, click “Next”  to take pictures of the affected vehicles',
                  style: CustomTextStyle().largeText,
                ),
                WTextButton(
                  onPressed: () {},
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
