import 'package:my_oga_mechanic/imports.dart';

class DashboardTwo extends StatelessWidget {
  const DashboardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    VehicleRegistrationOneControllers vehicleRegistrationOneControllers =
        Get.put(VehicleRegistrationOneControllers());
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
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 30.0.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20.0.sp,
                    ),
                    border: Border.all(
                      color: teal,
                      width: 2.0.w,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Make
                        Obx(
                          () => Text(
                            vehicleRegistrationOneControllers
                                .makeController.value,
                            style: CustomTextStyle().largeText,
                          ),
                        ),
                        //Model
                        Obx(
                          () => Text(
                            vehicleRegistrationOneControllers
                                .modelController.value,
                            style: CustomTextStyle().largeText,
                          ),
                        ),
                        //Body Build
                        Obx(
                          () => Text(
                            vehicleRegistrationOneControllers
                                .plateNumberController.value,
                            style: CustomTextStyle().largeText,
                          ),
                        ),
                      ],
                    ),
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
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: teal,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0.sp)),
                      backgroundColor: Colors.transparent),
                  child: Padding(
                    padding: EdgeInsets.all(20.0.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.build,
                          color: teal,
                        ),
                        Text(
                          'quick fix'.toUpperCase(),
                          style: CustomTextStyle().largeText,
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: teal,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0.sp)),
                      backgroundColor: Colors.transparent),
                  child: Padding(
                    padding: EdgeInsets.all(20.0.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.build,
                          color: teal,
                        ),
                        Text(
                          'quick fix'.toUpperCase(),
                          style: CustomTextStyle().largeText,
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: teal,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0.sp)),
                      backgroundColor: Colors.transparent),
                  child: Padding(
                    padding: EdgeInsets.all(20.0.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.build,
                          color: teal,
                        ),
                        Text(
                          'quick fix'.toUpperCase(),
                          style: CustomTextStyle().largeText,
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
