import 'package:my_oga_mechanic/imports.dart';

class AccidentOtherVehicleImageCapture extends StatelessWidget {
  const AccidentOtherVehicleImageCapture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        gradientStops: const [
          0.1,
          0.2,
          0.8,
        ],
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(
              32.0.sp,
            ),
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
                Text(
                  'Other Vehicle',
                  style: CustomTextStyle().largeText,
                ),
                const WCarNameWidget(),
                const WCarDetailsWidget(),
                const WSelectedCarWidget(),
                Text(
                  'Please, take the appropriate images of the affected areas as indicated in the images below',
                  style: CustomTextStyle().largeText,
                  textAlign: TextAlign.center,
                ),
                WTextButton(
                  onPressed: () async {
                    //TODO: Add images to accidents json file

                    // final XFile? image = await picker.pickImage(
                    //   source: ImageSource.camera,
                    // );
                    // carAcc.add(image);
                    // print(carAcc.asMap());

                    Get.toNamed('/accident_other_vehicles');
                  },
                  text: 'Add Photos',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
