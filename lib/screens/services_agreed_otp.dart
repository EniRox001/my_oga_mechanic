import 'package:my_oga_mechanic/imports.dart';

class ServicesAgreedOtp extends StatelessWidget {
  const ServicesAgreedOtp({super.key});

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
                Image.asset(
                  'assets/car_images/car_img_one.png',
                  height: Get.height / 5,
                  fit: BoxFit.contain,
                ),
                Text(
                  'Please, enter aceptance code sent to: 08022334455',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 5,
                  onChanged: (value) {
                    paymentAcceptanceOtp.onPaymentAcceptanceOtp(value);
                  },
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 150.0.h,
                ),
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/services_repair_completed');
                  },
                  text: 'Submit',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
