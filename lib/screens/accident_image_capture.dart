import 'package:my_oga_mechanic/imports.dart';

class AccidentImageCapture extends StatefulWidget {
  const AccidentImageCapture({super.key});

  @override
  State<AccidentImageCapture> createState() => _AccidentImageCaptureState();
}

class _AccidentImageCaptureState extends State<AccidentImageCapture> {
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
                  'My Vehicle',
                  style: CustomTextStyle().largeText,
                ),
                const WCarNameWidget(),
                const WCarDetailsWidget(),
                containImages
                    ? Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 35.0.h,
                          ),
                          itemBuilder: (context, index) => Image.network(
                            accidentImageList[index],
                          ),
                          itemCount: accidentImageList.length,
                        ),
                      )
                    : Column(
                        children: [
                          const WSelectedCarWidget(),
                          Text(
                            'Please, take the appropriate images of the affected areas as indicated in the images below',
                            style: CustomTextStyle().largeText,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                SizedBox(
                  height: 10.0.h,
                ),
                WTextButton(
                  onPressed: () async {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        });
                    await addAccidentImages();
                    setState(() {
                      containImages = true;
                      Navigator.pop(context);
                    });
                  },
                  text: 'Add Photos',
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                containImages
                    ? WTextButton(
                        onPressed: () async {
                          Get.toNamed('/accident_other_vehicles');
                        },
                        text: 'Next',
                      )
                    : SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
