import 'package:my_oga_mechanic/imports.dart';

final mechanicAreaOfSpecializion = selectedMechanic['areas of specialization'];

callNumber(number) async {
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

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
                  Image.network(
                    selectedMechanic['profile picture'].toString(),
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
                    selectedMechanic['full name'].toString().toUpperCase(),
                    style: CustomTextStyle().largeText,
                  ),
                  Text(
                    selectedMechanic['address'].toString().toTitleCase(),
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                  Wrap(
                    spacing: 10.0.w,
                    runSpacing: 10.0.h,
                    children: [
                      for (var i = 0;
                          i < mechanicAreaOfSpecializion.length;
                          i++)
                        WExpWidget(
                            text: mechanicAreaOfSpecializion[i]
                                .toString()
                                .toTitleCase()),
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
                          selectedMechanic['cars in cue'].toString(),
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
              WMechanicData(
                  title: 'Cars Fixed',
                  text: selectedMechanic['cars fixed'].toString()),
              WMechanicData(
                  title: 'Proximity',
                  text: '${selectedMechanic['proximity'].toString()}m'),
              WMechanicData(
                title: 'Rating',
                text: selectedMechanic['ratings'].toString(),
              ),
              const WMechanicData(title: 'Class', text: 'Level B'),
              WMechanicData(
                  title: 'Pricing',
                  text: selectedMechanic['pricing'].toString()),
              WDashboardButton(
                onPressed: () {
                  callNumber(selectedMechanic['phone'].toString());
                },
                icon: Icons.phone,
                text: 'Call to confirm',
              ),
              WDashboardButton(
                onPressed: () async {
                  //TODO: Google Maps to location
                  await launchMap();
                  await generateOtp();
                  Get.toNamed('services_arrived');
                  // sendMessage();
                },
                icon: Icons.flag,
                text: 'Drive to Location',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
