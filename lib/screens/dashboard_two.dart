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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                      ),
                    ),
                  ],
                ),
                const WCarNameWidget(),
                const WCarDetailsWidget(),
                Expanded(
                  child: Swiper(
                    itemCount: carImageList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        carImageList[index],
                      );
                    },
                  ),
                ),
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
                              'Nov 30, 2022',
                              style: Theme.of(context).textTheme.headline5,
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
                              'Nov 30, 2022',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0.h),
                WDashboardButton(
                  onPressed: () {},
                  icon: Icons.build,
                  text: 'quick fix',
                ),
                SizedBox(height: 10.0.h),
                WDashboardButton(
                  onPressed: () {},
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
