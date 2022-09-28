import 'package:my_oga_mechanic/imports.dart';

class VehicleRegistrationOne extends StatefulWidget {
  const VehicleRegistrationOne({super.key});

  @override
  State<VehicleRegistrationOne> createState() => _VehicleRegistrationOneState();
}

class _VehicleRegistrationOneState extends State<VehicleRegistrationOne> {
  @override
  Widget build(BuildContext context) {
    Color pickerColor = const Color(0xff443a49);
    Color currentColor = const Color(0xff443a49);
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
                  VehicleRegistrationOneText()
                      .vehicleRegistrationOneTitle
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
                        Text(
                          '- - -',
                          style: CustomTextStyle().largeText,
                        ),
                        //Model
                        Text(
                          '- - -',
                          style: CustomTextStyle().largeText,
                        ),
                        //Body Build
                        Text(
                          '- - -',
                          style: CustomTextStyle().largeText,
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  VehicleRegistrationOneText().vehicleRegistrationPageText,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                WRegistrationFieldTextField(
                  hintText: 'make',
                  controller:
                      VehicleRegistrationOneControllers().makeController,
                ),
                WRegistrationFieldTextField(
                  hintText: 'model',
                  controller:
                      VehicleRegistrationOneControllers().modelController,
                ),
                WRegistrationFieldTextField(
                  hintText: 'year',
                  controller:
                      VehicleRegistrationOneControllers().yearController,
                ),
                WRegistrationFieldTextField(
                  hintText: 'body build',
                  controller:
                      VehicleRegistrationOneControllers().bodyBuildController,
                ),
                WRegistrationFieldTextField(
                  hintText: 'plate number',
                  controller:
                      VehicleRegistrationOneControllers().plateNumberController,
                ),
                TextFormField(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: const Text('Choose Color'),
                          content: ColorPicker(
                            pickerColor: pickerColor,
                            onColorChanged: (color) {
                              setState(() {
                                pickerColor = color;
                              });
                            },
                          ),
                          actions: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  currentColor = pickerColor;
                                });
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Got it',
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                  readOnly: true,
                  controller:
                      VehicleRegistrationOneControllers().colorController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0.sp),
                    ),
                    filled: true,
                    fillColor: currentColor,
                    hintText: 'color'.toUpperCase(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0.sp),
                      borderSide: BorderSide(
                        width: 3.0.w,
                        color: teal,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0.sp),
                      borderSide: BorderSide(
                        width: 3.0.w,
                        color: teal,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150.0.h,
                ),
                WTextButton(
                  onPressed: () {},
                  text: 'Next',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
