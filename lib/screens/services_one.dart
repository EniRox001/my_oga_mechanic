import 'package:my_oga_mechanic/imports.dart';

class ServicesOne extends StatelessWidget {
  const ServicesOne({super.key});

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
                Text(
                  'services'.toUpperCase(),
                  style: CustomTextStyle().largeText,
                ),
                Text(
                  'What services are you looking for?',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                WDashboardButton(
                  onPressed: () async {
                    await getMechanics(
                        cars['make'].toString().toLowerCase(), 'mechanical');
                  },
                  icon: Icons.build,
                  text: 'mechanical',
                ),
                WDashboardButton(
                  onPressed: () async {
                    await getMechanics(
                        cars['make'].toString().toLowerCase(), 'electrical');
                  },
                  icon: Icons.bolt,
                  text: 'electrical',
                ),
                WDashboardButton(
                  onPressed: () async {
                    await getMechanics(
                        cars['make'].toString().toLowerCase(), 'vulcanizer');
                  },
                  icon: Icons.tire_repair,
                  text: 'tyre (vulcanizer)',
                ),
                WDashboardButton(
                  onPressed: () async {
                    await getMechanics(
                        cars['make'].toString().toLowerCase(), 'painter');
                  },
                  icon: Icons.format_paint,
                  text: 'painter',
                ),
                WDashboardButton(
                  onPressed: () async {
                    await getMechanics(
                        cars['make'].toString().toLowerCase(), 'upholstery');
                  },
                  icon: Icons.home_max,
                  text: 'upholstery',
                ),
                WDashboardButton(
                  onPressed: () async {
                    await getMechanics(cars['make'].toString().toLowerCase(),
                        'air conditioning');
                  },
                  icon: Icons.heat_pump,
                  text: 'air conditioning',
                ),
                WDashboardButton(
                  onPressed: () async {
                    await getMechanics(cars['make'].toString().toLowerCase(),
                        'body work (panel beater)');
                  },
                  icon: Icons.local_shipping,
                  text: 'body work/panel beater',
                ),
                WDashboardButton(
                  onPressed: () async {
                    await getMechanics(
                        cars['make'].toString().toLowerCase(), 'sound man');
                  },
                  icon: Icons.surround_sound,
                  text: 'sound man',
                ),
                WDashboardButton(
                  onPressed: () async {
                    await getMechanics(
                        cars['make'].toString().toLowerCase(), 'pimp my ride');
                  },
                  icon: Icons.star_border_outlined,
                  text: 'pimp my ride',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
