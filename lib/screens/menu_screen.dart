import 'package:my_oga_mechanic/imports.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

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
                CircleAvatar(
                  radius: 85.0.sp,
                  backgroundColor: Colors.teal,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      user['profile picture'],
                    ),
                    radius: 83.0.sp,
                  ),
                ),
                Text(
                  '${user['first name'].toString().toTitleCase()} ${user['last name'].toString().toTitleCase()}',
                  style: CustomTextStyle().largeText,
                  textAlign: TextAlign.center,
                ),
                Column(
                  children: [
                    WTextButton(
                      onPressed: () {
                        Get.toNamed('/menu_add_edit_vehicles');
                      },
                      text: 'add/edit vehicle details',
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    WTextButton(
                      onPressed: () {
                        Get.toNamed('/menu_edit_user_profile');
                      },
                      text: 'edit user profile',
                    ),
                  ],
                ),
                WTextButton(
                  onPressed: () {},
                  text: 'apply for license',
                ),
                WTextButton(
                  onPressed: () {},
                  text: 'logout',
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
