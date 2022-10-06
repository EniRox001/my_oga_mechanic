import 'package:my_oga_mechanic/imports.dart';

class QuickFixCategory extends StatelessWidget {
  const QuickFixCategory({super.key});

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
                  'quick fixes'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Please select the problem category',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/quick_fix');
                  },
                  icon: Icons.settings,
                  text: 'mechanical',
                ),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/quick_fix');
                  },
                  icon: Icons.bolt,
                  text: 'electrical',
                ),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/quick_fix');
                  },
                  icon: Icons.tire_repair,
                  text: 'tire (vulcanizer)',
                ),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/quick_fix');
                  },
                  icon: Icons.widgets,
                  text: 'not sure (other)',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
