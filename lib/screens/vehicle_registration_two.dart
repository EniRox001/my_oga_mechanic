import 'package:my_oga_mechanic/imports.dart';

class VehicleRegistrationTwo extends StatelessWidget {
  const VehicleRegistrationTwo({super.key});

  @override
  Widget build(BuildContext context) {
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
                  VehicleRegistrationTwoText()
                      .vehicleRegistrationTwoTitle
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
                //TODO: Car Image goes here
                Text(
                  VehicleRegistrationTwoText().vehicleRegistrationPageText,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                WRegistrationFieldTextField(
                  hintText: VehicleRegistrationTwoText()
                      .vehicleRegistrationRoadWorthinessHintText,
                  onChanged: (value) {
                    vehicleRegistrationTwoControllers
                        .onRoadWorthinessControllerChanged(value);
                  },
                  keyboardType: TextInputType.datetime,
                ),
                WRegistrationFieldTextField(
                  hintText: VehicleRegistrationTwoText()
                      .vehicleRegistrationVehicleLicenseHintText,
                  onChanged: (value) {
                    vehicleRegistrationTwoControllers
                        .onVehicleLicenseController(value);
                  },
                  keyboardType: TextInputType.datetime,
                ),
                WRegistrationFieldTextField(
                  hintText: VehicleRegistrationTwoText()
                      .vehicleRegistrationInsuranceHintText,
                  onChanged: (value) {
                    vehicleRegistrationTwoControllers
                        .onInsuranceLicenseControllerChanged(value);
                  },
                  keyboardType: TextInputType.datetime,
                ),
                SizedBox(
                  height: 150.0.h,
                ),
                WTextButton(
                  onPressed: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                    await createUser();
                    await createCar();
                    await checkUser(
                        phoneNumberController.phoneNumberController.value);
                    // Navigator.of(context, rootNavigator: true).pop('dialog');
                    Future.delayed(Duration(seconds: 10), () {
                      Get.toNamed('/dashboard_two');
                    });
                  },
                  text: VehicleRegistrationTwoText().nextButtonText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
