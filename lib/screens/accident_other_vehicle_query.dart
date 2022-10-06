import 'package:my_oga_mechanic/imports.dart';

class AccidentOtherVehiclesQuery extends StatelessWidget {
  const AccidentOtherVehiclesQuery({super.key});

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
                  'Is the vehicle registered on My Oga Mechanic?',
                  style: CustomTextStyle().largeText,
                  textAlign: TextAlign.center,
                ),
                Column(
                  children: [
                    WTextButton(
                        onPressed: () {
                          Get.toNamed('/accident_other_vehicle_image');
                        },
                        text: 'yes'),
                    SizedBox(height: 20.0.h),
                    WTextButton(
                        onPressed: () {
                          Get.toNamed('/user_registration_one');
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
