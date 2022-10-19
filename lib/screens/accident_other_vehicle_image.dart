import 'package:my_oga_mechanic/imports.dart';

class AccidentOtherVehicleImageCapture extends StatefulWidget {
  const AccidentOtherVehicleImageCapture({super.key});

  @override
  State<AccidentOtherVehicleImageCapture> createState() =>
      _AccidentOtherVehicleImageCaptureState();
}

class _AccidentOtherVehicleImageCaptureState
    extends State<AccidentOtherVehicleImageCapture> {
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
                containOtherImages
                    ? Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 35.0.h,
                          ),
                          itemBuilder: (context, index) => Image.network(
                            accidentOtherImageList[index],
                          ),
                          itemCount: accidentOtherImageList.length,
                        ),
                      )
                    : Text(
                        'Please, take the appropriate images of the affected areas as indicated in the images below',
                        style: CustomTextStyle().largeText,
                        textAlign: TextAlign.center,
                      ),
                WTextButton(
                  onPressed: () async {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        });
                    await addOtherAccidentImages();
                    setState(() {
                      containOtherImages = true;
                      Navigator.pop(context);
                    });
                  },
                  text: 'Add Photos',
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                containOtherImages
                    ? WTextButton(
                        onPressed: () {
                          otherAccidentVehicles = true;
                          Get.toNamed('/accident_tow_truck_query');
                        },
                        text: 'next')
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
