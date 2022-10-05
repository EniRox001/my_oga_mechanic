import 'package:my_oga_mechanic/imports.dart';

class ServicesRateMechanic extends StatelessWidget {
  const ServicesRateMechanic({super.key});

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
              CircleAvatar(
                radius: 85.0.sp,
                backgroundColor: Colors.teal,
                child: CircleAvatar(
                  backgroundImage: const AssetImage(
                    'assets/images/mechanic_pic.jpg',
                  ),
                  radius: 83.0.sp,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: Colors.white,
                      width: 2.0.h,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.0.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ogene Auto Shop',
                        style: CustomTextStyle().largeText,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(32.0.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Thank you for using our service. please rate the technician(s)',
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    WRateMechanicWidget(
                      title: 'Communication',
                      onChanged: (value) {
                        rateMechanicControllers
                            .onCommunicationControllerChanged(value);
                      },
                    ),
                    WRateMechanicWidget(
                      title: 'Knowledge of Issue',
                      onChanged: (value) {
                        rateMechanicControllers
                            .onKnowledgeOfIssueControllerChanged(value);
                      },
                    ),
                    WRateMechanicWidget(
                      title: 'Pricing',
                      onChanged: (value) {
                        rateMechanicControllers.onPricingChanged(value);
                      },
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    WRegistrationFieldTextField(
                      hintText: 'Write a review',
                      onChanged: (value) {
                        rateMechanicControllers.onMechanicReviewChanged(value);
                      },
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 100.0.h,
                    ),
                    WTextButton(
                      onPressed: () {
                        Get.toNamed('dashboard_two');
                      },
                      text: 'submit',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
