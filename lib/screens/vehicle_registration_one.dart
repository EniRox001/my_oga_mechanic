import 'package:my_oga_mechanic/imports.dart';

String dropdownvalue = 'Color';

// List of items in our dropdown menu
var items = [
  'Color',
  'Red',
  'Blue',
  'Green',
  'Orange',
  'Black',
  'Yellow',
  'Purple',
  'Silver',
  'Brown',
  'Grey',
  'Pink',
  'Olive',
  'Maroon',
  'Violet',
  'Charcoal',
  'Magenta',
  'Bronze',
  'Cream',
  'Gold',
  'Tan',
  'Teal',
  'Mustard',
  'Navy Blue',
  'Coral',
  'Burgundy',
  'Lavender',
  'Mauve',
  'Peach',
  'Rust',
  'Indigo',
  'Ruby',
  'Clay',
  'Cyan',
  'Azure',
  'Beige',
  'Off White',
  'Turquoise',
  'Amber',
  'Mint',
];

class VehicleRegistrationOne extends StatelessWidget {
  const VehicleRegistrationOne({super.key});

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
                        Obx(
                          () => Text(
                            vehicleRegistrationOneControllers
                                .makeController.value
                                .toUpperCase(),
                            style: CustomTextStyle().largeText,
                          ),
                        ),
                        //Model
                        Obx(
                          () => Text(
                            vehicleRegistrationOneControllers
                                .modelController.value
                                .toUpperCase(),
                            style: CustomTextStyle().largeText,
                          ),
                        ),
                        //Body Build
                        Obx(
                          () => Text(
                            vehicleRegistrationOneControllers
                                .plateNumberController.value
                                .toUpperCase(),
                            style: CustomTextStyle().largeText,
                          ),
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
                  hintText: VehicleRegistrationOneText()
                      .vehicleRegistrationMakeHintText,
                  onChanged: (value) {
                    vehicleRegistrationOneControllers
                        .onMakeControllerChange(value);
                  },
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    return null;
                  },
                ),
                WRegistrationFieldTextField(
                  hintText: VehicleRegistrationOneText()
                      .vehicleRegistrationModelHintText,
                  onChanged: (value) {
                    vehicleRegistrationOneControllers
                        .onModelControllerChange(value);
                  },
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    return null;
                  },
                ),
                GestureDetector(
                  onTap: () {
                    vehicleRegistrationOneControllers
                        .onYearControllerChanged(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: teal,
                        width: 3.0.w,
                      ),
                      borderRadius: BorderRadius.circular(15.0.sp),
                      color: Colors.black87,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0.sp),
                          child: Obx(
                            () => Text(
                              vehicleRegistrationOneControllers.yearController
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 22.0.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                WRegistrationFieldTextField(
                  hintText: VehicleRegistrationOneText()
                      .vehicleRegistrationBodyBuildHintText,
                  onChanged: (value) {
                    vehicleRegistrationOneControllers
                        .onBodyBuildControllerChange(value);
                  },
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    return null;
                  },
                ),
                WRegistrationFieldTextField(
                  hintText: VehicleRegistrationOneText()
                      .vehicleRegistrationPlateNumberHintText,
                  onChanged: (value) {
                    vehicleRegistrationOneControllers
                        .onPlateNumberControllerChange(value);
                  },
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    return null;
                  },
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0.sp,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: teal,
                        width: 3.0.w,
                      ),
                      borderRadius: BorderRadius.circular(15.0.sp),
                      color: Colors.black87,
                    ),
                    child: Obx(
                      () => DropdownButton(
                        isExpanded: true,
                        value: vehicleRegistrationOneControllers.carColor.value,
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items, child: Text(items));
                        }).toList(),
                        onChanged: (String? newValue) {
                          vehicleRegistrationOneControllers.onCarColorChanged(
                            newValue!,
                          );
                        },
                      ),
                    )),
                WTextButton(
                  onPressed: () {
                    Get.toNamed('/vehicle_registration_two');
                  },
                  text: VehicleRegistrationOneText().nextButtonText,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
