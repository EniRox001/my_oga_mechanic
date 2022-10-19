import 'package:my_oga_mechanic/imports.dart';

class AccidentTowTruckQuery extends StatelessWidget {
  const AccidentTowTruckQuery({super.key});

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
                  'Do you need a Tow truck?',
                  style: CustomTextStyle().largeText,
                  textAlign: TextAlign.center,
                ),
                Column(
                  children: [
                    WTextButton(
                        onPressed: () async {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              });
                          towTruckRequest = true;
                          await requestTowTruck();
                          // await createAccident();
                          Future.delayed(
                            Duration(seconds: 6),
                            () {
                              Navigator.pop(context);
                              Get.toNamed('/accident_tow_truck');
                            },
                          );
                        },
                        text: 'yes'),
                    SizedBox(height: 20.0.h),
                    WTextButton(
                        onPressed: () async {
                          towTruckRequest = false;
                          await createAccident();
                          Get.toNamed('/dashboard_two');
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
