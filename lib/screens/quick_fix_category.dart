import 'package:my_oga_mechanic/imports.dart';

class QuickFixCategory extends StatefulWidget {
  const QuickFixCategory({super.key});

  @override
  State<QuickFixCategory> createState() => _QuickFixCategoryState();
}

class _QuickFixCategoryState extends State<QuickFixCategory> {
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
                  onPressed: () async {
                    await requestMechanicQuickFix(
                      cars['make'].toString().toLowerCase(),
                      'mechanical',
                      context,
                    );
                  },
                  icon: Icons.settings,
                  text: 'mechanical',
                ),
                WDashboardButton(
                  onPressed: () async {
                    await requestMechanicQuickFix(
                      cars['make'].toString().toLowerCase(),
                      'electrical',
                      context,
                    );
                  },
                  icon: Icons.bolt,
                  text: 'electrical',
                ),
                WDashboardButton(
                  onPressed: () async {
                    await requestMechanicQuickFix(
                      cars['make'].toString().toLowerCase(),
                      'tire',
                      context,
                    );
                  },
                  icon: Icons.tire_repair,
                  text: 'tire (vulcanizer)',
                ),
                WDashboardButton(
                  onPressed: () async {
                    await requestMechanicQuickFix(
                      cars['make'].toString().toLowerCase(),
                      'any',
                      context,
                    );
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
