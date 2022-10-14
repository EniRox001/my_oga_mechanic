import 'package:my_oga_mechanic/imports.dart';

class DashboardTwo extends StatelessWidget {
  const DashboardTwo({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.toNamed('/menu_screen');
                      },
                      icon: const Icon(
                        Icons.menu,
                      ),
                    ),
                  ],
                ),
                const WCarNameWidget(),
                const WCarDetailsWidget(),
                WSelectedCarWidget(),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Next Service',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          'Document Expiring',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0.sp),
                            child: Text(
                              //TODO: Add next service data document data here
                              'Nov 30, 2022',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0.sp),
                            child: Text(
                              //TODO: Add document expiring data document data here
                              'Nov 30, 2022',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0.h),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/quick_fix_category');
                  },
                  icon: Icons.build,
                  text: 'quick fix',
                ),
                SizedBox(height: 10.0.h),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/accident_services_selection');
                  },
                  icon: Icons.car_crash,
                  text: 'accident',
                  color: Colors.redAccent,
                ),
                SizedBox(height: 10.0.h),
                WDashboardButton(
                  onPressed: () {
                    Get.toNamed('/services_one');
                  },
                  icon: Icons.home_repair_service,
                  text: 'service request',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
