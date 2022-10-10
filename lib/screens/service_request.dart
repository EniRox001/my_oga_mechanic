import 'package:my_oga_mechanic/imports.dart';

class ServiceRequest extends StatelessWidget {
  const ServiceRequest({super.key});

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
            padding: EdgeInsets.all(32.0.sp),
            child: Column(
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
                  'services'.toUpperCase(),
                  style: CustomTextStyle().largeText,
                ),
                Text(
                  'This list is arranged according to proximity',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: mechanics.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          selectedMechanic = mechanics[index];
                          Get.toNamed('/service_mechanic');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(10.0.sp)),
                          child: ListTile(
                            title: Text(mechanics[index]['full name']),
                            subtitle:
                                Text(mechanics[index]['ratings'].toString()),
                            trailing:
                                Text(mechanics[index]['ratings'].toString()),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10.0.h,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
