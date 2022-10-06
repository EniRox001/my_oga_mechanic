import 'package:my_oga_mechanic/imports.dart';

class MenuVehicleProfile extends StatelessWidget {
  const MenuVehicleProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(
              32.0.sp,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  'vehicle profile'.toUpperCase(),
                  style: CustomTextStyle().largeText,
                ),
                Column(
                  children: const [
                    WMechanicData(title: 'CAR ID', text: 'CP4349289'),
                    WMechanicData(title: 'MAKE', text: 'AUDI'),
                    WMechanicData(title: 'MODEL', text: 'A6'),
                    WMechanicData(title: 'YEAR', text: '2012'),
                  ],
                ),
                const WSelectedCarWidget(),
                Column(
                  children: const [
                    WMechanicData(title: 'ROAD WORTHINESS', text: '22-08-2023'),
                    WMechanicData(
                      title: 'INSURANCE',
                      text: '22-08-2023',
                    ),
                  ],
                ),
                WTextButton(
                  onPressed: () {},
                  text: 'premium gold',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
