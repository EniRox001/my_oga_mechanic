import 'package:my_oga_mechanic/imports.dart';

class ServiceMechanic extends StatelessWidget {
  const ServiceMechanic({super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/mechanic_pic.jpg',
                    height: Get.height / 5,
                    width: Get.width,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.all(32.0.sp),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Row(
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
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Ogene Auto Shop',
                    style: CustomTextStyle().largeText,
                  ),
                  Text(
                    '11 Kasim Street, off ikeja roa, Ipaja, Lagos',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                  Wrap(
                    spacing: 10.0.w,
                    runSpacing: 10.0.h,
                    children: const [
                      WExpWidget(text: 'Mechanical'),
                      WExpWidget(text: 'Eletrical'),
                      WExpWidget(text: 'Mechanical'),
                      WExpWidget(text: 'Eletrical'),
                    ],
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(color: teal),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Cars in Repair Cue:'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 32.0.sp,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '5',
                          style: TextStyle(
                            fontSize: 32.0.sp,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const WMechanicData(title: 'Cars Fixed', text: '2200'),
              const WMechanicData(title: 'Proximity', text: '0.3m'),
              const WMechanicData(title: 'Rating', text: '4.5'),
              const WMechanicData(title: 'Class', text: 'Level B'),
              const WMechanicData(title: 'Pricing', text: '4.5'),
              WDashboardButton(
                onPressed: () {
                  //TODO: Open phone and call number
                },
                icon: Icons.phone,
                text: 'Call to confirm',
              ),
              WDashboardButton(
                onPressed: () {
                  //TODO: Google Maps to location
                  Get.toNamed('services_arrived');
                },
                icon: Icons.location_on,
                text: 'Drive to Location',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
