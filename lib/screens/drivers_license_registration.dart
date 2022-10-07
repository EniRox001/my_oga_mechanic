import 'package:my_oga_mechanic/imports.dart';

class DriversLicenseRegistration extends StatefulWidget {
  const DriversLicenseRegistration({super.key});

  @override
  State<DriversLicenseRegistration> createState() =>
      _DriversLicenseRegistrationState();
}

class _DriversLicenseRegistrationState
    extends State<DriversLicenseRegistration> {
  bool isLoading = false;

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
            child: isLoading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(),
                      Text(
                        'Please wait as we verify your driver\'s licence',
                        style: CustomTextStyle().largeText,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        DriversLicenseRegistrationText()
                            .driversLicenseRegistrationTitle
                            .toUpperCase(),
                        style: CustomTextStyle().largeText,
                      ),
                      const WImagePicker(),
                      Text(
                        DriversLicenseRegistrationText()
                            .driversLicenseRegistrationPageText,
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      WRegistrationFieldTextField(
                        hintText: DriversLicenseRegistrationText()
                            .driversLicenseNumberHintText
                            .toUpperCase(),
                        onChanged: (value) {
                          driversLicenseRegistrationControllers
                              .onDriversLicenseControllerChanged(value);
                        },
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 100.0.h,
                      ),
                      WTextButton(
                        onPressed: () async {
                          setState(() {
                            isLoading = true;
                          });
                          await verifyId(driversLicenseRegistrationControllers
                              .driversLicenseController.value);
                          setState(() {
                            isLoading = false;
                          });
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(idMessage),
                            ),
                          );
                        },
                        text: DriversLicenseRegistrationText()
                            .nextButtonText
                            .toUpperCase(),
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
