import 'package:my_oga_mechanic/imports.dart';

class ServicesAgreeAmount extends StatelessWidget {
  const ServicesAgreeAmount({super.key});

  @override
  Widget build(BuildContext context) {
    VehicleRegistrationOneControllers vehicleRegistrationOneControllers =
        Get.put(VehicleRegistrationOneControllers());
    AgreedPriceController agreedPriceController =
        Get.put(AgreedPriceController());
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
                Column(
                  children: [
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
                  ],
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
                Image.asset(
                  'assets/car_images/car_img_one.png',
                  height: Get.height / 4,
                  fit: BoxFit.contain,
                ),
                Text(
                  'Please, enter the repair cost agreed upon',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                WRegistrationFieldTextField(
                  hintText: 'Amount',
                  onChanged: (value) {
                    agreedPriceController.onAgreedPriceChange(value);
                  },
                  keyboardType: TextInputType.number,
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        shape: const StadiumBorder(),
                        fillColor: MaterialStateProperty.all(teal),
                        value: agreedPriceController.agreedPay.value,
                        onChanged: (value) {
                          agreedPriceController.onAgreePay();
                        },
                      ),
                      const Text(
                        'I accept the above charges',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.0.h,
                ),
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/services_agreed_otp');
                  },
                  text: 'Next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
