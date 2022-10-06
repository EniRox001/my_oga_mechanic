import 'package:my_oga_mechanic/imports.dart';

class MenuEditUserProfile extends StatelessWidget {
  const MenuEditUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                CircleAvatar(
                  radius: 85.0.sp,
                  backgroundColor: Colors.teal,
                  child: CircleAvatar(
                    backgroundImage: const AssetImage(
                      'assets/images/myOgaMechanicLogo.png',
                    ),
                    radius: 83.0.sp,
                  ),
                ),
                Column(
                  children: [
                    WRegistrationFieldTextField(
                      hintText: userRegistrationTwoControllers
                          .firstNameController.string,
                      onChanged: (value) {
                        userRegistrationTwoControllers
                            .onFirstNameChanged(value);
                      },
                      keyboardType: TextInputType.name,
                      label: 'First Name',
                    ),
                    WRegistrationFieldTextField(
                      hintText: userRegistrationTwoControllers
                          .lastNameController.string,
                      onChanged: (value) {
                        userRegistrationTwoControllers
                            .onFirstNameChanged(value);
                      },
                      keyboardType: TextInputType.name,
                      label: 'Last Name',
                    ),
                    WRegistrationFieldTextField(
                      hintText: userRegistrationOneControllers
                          .emailAddressController.string,
                      onChanged: (value) {
                        userRegistrationOneControllers
                            .onEmailAddressChanged(value);
                      },
                      keyboardType: TextInputType.name,
                      label: 'Email Address',
                    ),
                    WRegistrationFieldTextField(
                      hintText: userRegistrationOneControllers
                          .homeAddressController.string,
                      onChanged: (value) {
                        userRegistrationOneControllers
                            .onHomeAddressChanged(value);
                      },
                      keyboardType: TextInputType.name,
                      label: 'Home Address',
                    ),
                    WRegistrationFieldTextField(
                      hintText: userRegistrationOneControllers
                          .officeAddressController.string,
                      onChanged: (value) {
                        userRegistrationOneControllers
                            .onOfficeAddressChanged(value);
                      },
                      keyboardType: TextInputType.name,
                      label: 'Office Address',
                    ),
                  ],
                ),
                SizedBox(
                  height: 150.0.h,
                ),
                WTextButton(
                    onPressed: () {
                      Get.back();
                    },
                    text: 'save')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
