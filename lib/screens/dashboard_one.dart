import 'package:my_oga_mechanic/imports.dart';

class DashboardOne extends StatelessWidget {
  const DashboardOne({super.key});

  @override
  Widget build(BuildContext context) {
    UserRegistrationTwoControllers userRegistrationTwoControllers =
        Get.put(UserRegistrationTwoControllers());
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
              children: [
                Obx(
                  () => Text(
                    'Welcome ${userRegistrationTwoControllers.firstNameController}',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Text(
                  'Swipe left/right to view other cars',
                  style: TextStyle(
                    color: const Color(0xFFF2C94C),
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: carImageList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(carImageList[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
