import 'package:my_oga_mechanic/imports.dart';

class AccidentTowTruck extends StatelessWidget {
  const AccidentTowTruck({super.key});

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
                  'Towing Service'.toUpperCase(),
                  style: CustomTextStyle().largeText,
                ),
                Image.asset(
                  'assets/car_images/tow_truck.png',
                  height: Get.height / 5,
                ),
                Column(
                  children: [
                    WMechanicData(
                        title: 'Car Make',
                        text:
                            selectedTowTruck['make'].toString().toUpperCase()),
                    WMechanicData(
                        title: 'Capacity',
                        text: selectedTowTruck['capacity']
                            .toString()
                            .toUpperCase()),
                    WMechanicData(
                      title: 'Plate Number',
                      text: selectedTowTruck['plate number']
                          .toString()
                          .toUpperCase(),
                    ),
                    WMechanicData(
                      title: 'Owner',
                      text: selectedTowTruck['owner'].toString().toUpperCase(),
                    ),
                  ],
                ),
                Text(
                  'A tow truck is on the way'.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText1,
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
                  onPressed: () async {
                    callNumber(
                      selectedTowTruck['number'],
                    );
                  },
                  text: 'Call Driver',
                  color: Colors.red,
                ),
                WTextButton(
                    onPressed: () {
                      Get.toNamed('dashboard_two');
                    },
                    text: 'Close')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
