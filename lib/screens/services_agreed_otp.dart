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
                const WSelectedCarWidget(),
                Text(
                  'Please, enter aceptance code sent to: ${selectedMechanic['phone']}',
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
                  onPressed: () async {
                    validateMechanicPriceOtp(int.parse(
                        paymentAcceptanceOtp.paymentAcceptanceOtp.value));
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Padding(
                        padding: EdgeInsets.all(16.0.sp),
                        child: Text(
                          agreedOtpPriceMessage,
                          style: CustomTextStyle().largeText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
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
