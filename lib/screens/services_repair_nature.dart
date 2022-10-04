import 'package:my_oga_mechanic/imports.dart';

class ServiceRepairNature extends StatelessWidget {
  const ServiceRepairNature({super.key});

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  'assets/car_images/car_img_one.png',
                  height: Get.height / 10,
                ),
                Text(
                  'What is the nature of the repair',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/services_agree_amount');
                  },
                  icon: Icons.settings,
                  text: 'engine',
                ),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/services_agree_amount');
                  },
                  icon: Icons.build,
                  text: 'suspension',
                ),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/services_agree_amount');
                  },
                  icon: Icons.plumbing,
                  text: 'brakes',
                ),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/services_agree_amount');
                  },
                  icon: Icons.hvac,
                  text: 'emisson',
                ),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/services_agree_amount');
                  },
                  icon: Icons.hardware,
                  text: 'transmission',
                ),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/services_agree_amount');
                  },
                  icon: Icons.widgets,
                  text: 'Others',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
