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
                Column(
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
                        backgroundImage: NetworkImage(
                          user['profile picture'],
                        ),
                        radius: 83.0.sp,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0.h),
                          child: Text(
                            'USER ID: ${user['id'].toString().substring(10, 34)}',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        WRegistrationFieldTextField(
                          hintText: user['first name'].toString().toString(),
                          onChanged: (value) {
                            userRegistrationTwoControllers
                                .onFirstNameChanged(value);
                          },
                          keyboardType: TextInputType.name,
                          label: 'First Name',
                          validator: (value) {
                            return null;
                          },
                        ),
                        WRegistrationFieldTextField(
                          hintText: user['last name'].toString(),
                          onChanged: (value) {
                            userRegistrationTwoControllers
                                .onFirstNameChanged(value);
                          },
                          keyboardType: TextInputType.name,
                          label: 'Last Name',
                          validator: (value) {
                            return null;
                          },
                        ),
                        WRegistrationFieldTextField(
                          hintText: user['email address'].toString(),
                          onChanged: (value) {
                            userRegistrationOneControllers
                                .onEmailAddressChanged(value);
                          },
                          keyboardType: TextInputType.name,
                          label: 'Email Address',
                          validator: (value) {
                            return null;
                          },
                        ),
                        WRegistrationFieldTextField(
                          hintText: user['home address'].toString(),
                          onChanged: (value) {
                            userRegistrationOneControllers
                                .onHomeAddressChanged(value);
                          },
                          keyboardType: TextInputType.name,
                          label: 'Home Address',
                          validator: (value) {
                            return null;
                          },
                        ),
                        WRegistrationFieldTextField(
                          hintText: user['office address'].toString(),
                          onChanged: (value) {
                            userRegistrationOneControllers
                                .onOfficeAddressChanged(value);
                          },
                          keyboardType: TextInputType.name,
                          label: 'Office Address',
                          validator: (value) {
                            return null;
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                WTextButton(
                    onPressed: () {
                      checkInputDirty(
                          userRegistrationTwoControllers
                              .firstNameController.value
                              .toLowerCase(),
                          user['first name']);
                      checkInputDirty(
                          userRegistrationTwoControllers
                              .lastNameController.value
                              .toLowerCase(),
                          user['first name']);
                      checkInputDirty(
                          userRegistrationOneControllers
                              .emailAddressController.value
                              .toLowerCase(),
                          user['first name']);
                      checkInputDirty(
                          userRegistrationOneControllers
                              .homeAddressController.value
                              .toLowerCase(),
                          user['first name']);
                      checkInputDirty(
                          userRegistrationOneControllers
                              .officeAddressController.value
                              .toLowerCase(),
                          user['first name']);
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
