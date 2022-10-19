import 'package:my_oga_mechanic/imports.dart';

class AccidentServiceSelection extends StatelessWidget {
  const AccidentServiceSelection({super.key});

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
                  'What do you need',
                  style: CustomTextStyle().largeText,
                ),
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/accident_ambulance_selection');
                  },
                  text: 'medical assistance',
                  color: Colors.red,
                ),
                WTextButton(
                  onPressed: () {
                    ambulance = false;
                    Get.toNamed('/accident_image_capture');
                  },
                  text: 'vehicle repair',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
