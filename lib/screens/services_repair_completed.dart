import 'package:my_oga_mechanic/imports.dart';

class ServicesRepairCompleted extends StatelessWidget {
  const ServicesRepairCompleted({super.key});

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
                const WCarNameWidget(),
                const WCarDetailsWidget(),
                const WSelectedCarWidget(),
                Text(
                  'Please, be patient while your car is being attended to',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 150.0.h,
                ),
                WTextButton(
                  onPressed: () async {
                    await removeMechanicCarCue();
                    // Get.toNamed('/services_rate_mechanic');
                  },
                  text: 'repair completed',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
