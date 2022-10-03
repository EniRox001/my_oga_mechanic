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
                  onPressed: () {
                    Get.toNamed('service_request');
                  },
                  icon: Icons.build,
                  text: 'mechanical',
                ),
                WDashboardButton(
                  onPressed: () {},
                  icon: Icons.bolt,
                  text: 'electrical',
                ),
                WDashboardButton(
                  onPressed: () {},
                  icon: Icons.tire_repair,
                  text: 'tyre (vulcanizer)',
                ),
                WDashboardButton(
                  onPressed: () {},
                  icon: Icons.format_paint,
                  text: 'painter',
                ),
                WDashboardButton(
                  onPressed: () {},
                  icon: Icons.home_max,
                  text: 'upholstery',
                ),
                WDashboardButton(
                  onPressed: () {},
                  icon: Icons.heat_pump,
                  text: 'air conditioning',
                ),
                WDashboardButton(
                  onPressed: () {},
                  icon: Icons.local_shipping,
                  text: 'body work/panel beater',
                ),
                WDashboardButton(
                  onPressed: () {},
                  icon: Icons.surround_sound,
                  text: 'sound man',
                ),
                WDashboardButton(
                  onPressed: () {},
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
