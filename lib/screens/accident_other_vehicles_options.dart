import 'package:my_oga_mechanic/imports.dart';

class AccidentOtherVehicles extends StatelessWidget {
  const AccidentOtherVehicles({super.key});

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
                Text(
                  'Are there other vehicles involved in the accident?',
                  style: CustomTextStyle().largeText,
                  textAlign: TextAlign.center,
                ),
                Column(
                  children: [
                    WTextButton(
                      onPressed: () {
                        Get.toNamed('/accident_other_vehicles_query');
                      },
                      text: 'yes',
                    ),
                    SizedBox(height: 20.0.h),
                    WTextButton(
                        onPressed: () {
                          otherAccidentVehicles = false;
                          accidentOtherImageList = [];
                          Get.toNamed('/accident_tow_truck_query');
                        },
                        text: 'no'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
