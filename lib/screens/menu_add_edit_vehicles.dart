import 'package:my_oga_mechanic/imports.dart';

class MenuAddEditVehicles extends StatelessWidget {
  const MenuAddEditVehicles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(32.0.sp),
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: const [
                WCarsWidget(),
                WCarsWidget(),
                WCarsWidget(),
                WCarsWidget(),
                WAddNewCar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WAddNewCar extends StatelessWidget {
  const WAddNewCar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/vehicle_registration_one');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(20.0.sp),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.add,
                color: teal,
              ),
              Text(
                'add new vehicle'.toUpperCase(),
                style: CustomTextStyle().mediumText,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WCarsWidget extends StatelessWidget {
  const WCarsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/menu_vehicle_profile');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(20.0.sp),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0.sp),
          child: Column(
            children: const [
              WCarNameWidget(),
              WCarDetailsSmallWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
