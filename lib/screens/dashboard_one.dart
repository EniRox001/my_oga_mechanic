import 'package:my_oga_mechanic/imports.dart';

class DashboardOne extends StatelessWidget {
  const DashboardOne({super.key});

  @override
  Widget build(BuildContext context) {
    UserRegistrationTwoControllers userRegistrationTwoControllers =
        Get.put(UserRegistrationTwoControllers());
    VehicleRegistrationOneControllers vehicleRegistrationOneControllers =
        Get.put(VehicleRegistrationOneControllers());
    return Swipe(
      onSwipeUp: () {
        Get.toNamed('/dashboard_two');
      },
      child: Scaffold(
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
                      '${DashboardOneText().welcome.toTitleCase()} ${userRegistrationTwoControllers.firstNameController}',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  Text(
                    DashboardOneText().swipeViewCars,
                    style: TextStyle(
                      color: const Color(0xFFF2C94C),
                      fontSize: 24.0.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 50.0.h,
                  ),
                  Obx(
                    () => Text(
                      '${vehicleRegistrationOneControllers.makeController}',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  Obx(
                    () => Text(
                      '${vehicleRegistrationOneControllers.modelController}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
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
                  const Icon(
                    Icons.keyboard_arrow_up,
                  ),
                  Text(
                    DashboardOneText().swipeUpText,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
