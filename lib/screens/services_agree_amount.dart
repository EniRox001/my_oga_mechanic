import 'package:my_oga_mechanic/imports.dart';

class ServicesAgreeAmount extends StatelessWidget {
  const ServicesAgreeAmount({super.key});

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
