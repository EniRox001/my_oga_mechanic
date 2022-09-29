import 'package:my_oga_mechanic/imports.dart';

class VehicleRegistrationOne extends StatelessWidget {
  const VehicleRegistrationOne({super.key});

  @override
  Widget build(BuildContext context) {
    VehicleRegistrationOneControllers vehicleRegistrationOneControllers =
        Get.put(VehicleRegistrationOneControllers());
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              children: <Widget>[
                Text(
                  VehicleRegistrationOneText()
                      .vehicleRegistrationOneTitle
                      .toUpperCase(),
                  style: CustomTextStyle().largeText,
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
                Text(
                  VehicleRegistrationOneText().vehicleRegistrationPageText,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                WRegistrationFieldTextField(
                  hintText: 'make',
                  onChanged: (value) {
                    vehicleRegistrationOneControllers
                        .onMakeControllerChange(value);
                  },
                  keyboardType: TextInputType.text,
                ),
                WRegistrationFieldTextField(
                  hintText: 'model',
                  onChanged: (value) {
                    vehicleRegistrationOneControllers
                        .onModelControllerChange(value);
                  },
                  keyboardType: TextInputType.text,
                ),
                GestureDetector(
                  onTap: () {
                    vehicleRegistrationOneControllers
                        .onYearControllerChanged(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: teal,
                        width: 3.0.w,
                      ),
                      borderRadius: BorderRadius.circular(15.0.sp),
                      color: Colors.black87,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0.sp),
                          child: Obx(
                            () => Text(
                              vehicleRegistrationOneControllers.yearController
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 22.0.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                WRegistrationFieldTextField(
                  hintText: 'body build',
                  onChanged: (value) {
                    vehicleRegistrationOneControllers
                        .onBodyBuildControllerChange(value);
                  },
                  keyboardType: TextInputType.text,
                ),
                WRegistrationFieldTextField(
                  hintText: 'plate number',
                  onChanged: (value) {
                    vehicleRegistrationOneControllers
                        .onPlateNumberControllerChange(value);
                  },
                  keyboardType: TextInputType.text,
                ),
                GestureDetector(
                  onTap: () {
                    vehicleRegistrationOneControllers
                        .onColorControllerChange(context);
                  },
                  child: Obx(() {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: teal,
                          width: 3.0.w,
                        ),
                        borderRadius: BorderRadius.circular(15.0.sp),
                        color: vehicleRegistrationOneControllers
                            .currentColor.value,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(18.0.sp),
                            child: (Text(
                              'Color',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 22.0.sp),
                            )),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 150.0.h,
                ),
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/vehicle_registration_two');
                  },
                  text: 'Next',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
