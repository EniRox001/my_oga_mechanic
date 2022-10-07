import 'package:my_oga_mechanic/imports.dart';

var idMessage = '';

const bearerToken =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwaS5hcHBydXZlLmNvIiwianRpIjoiOTIwNjVhNGYtZGQ5Ni00OGViLWE4N2UtOTkxMjAwMTNkZWM3IiwiYXVkIjoiOTBiMWViOGQtNDM0ZS00YTMxLTlhNGItZmIzOTQ0MDZkZDcxIiwic3ViIjoiYjhjZGJhZmYtYzJjNS00NzlkLTk3YzEtMGI0NTljODE1NzIyIiwibmJmIjowLCJzY29wZXMiOlsidmVyaWZpY2F0aW9uX3ZpZXciLCJ2ZXJpZmljYXRpb25fbGlzdCIsInZlcmlmaWNhdGlvbl9kb2N1bWVudCIsInZlcmlmaWNhdGlvbl9pZGVudGl0eSJdLCJleHAiOjE2Njc3NDQzNzYsImlhdCI6MTY2NTE1MjM3Nn0.YHa7Bd7tCgaRYuua3WmYBXiPWiXu_7w0f9K6lLVW9r4';

var dio = Dio();
verifyId(String number) async {
  try {
    final response = await dio.post(
        'https://api.appruve.co/v1/verifications/ng/driver_license',
        data: {
          'id': number,
        },
        options: Options(headers: {'Authorization': 'Bearer $bearerToken'}));
    print(response);

    final firstName = response.data['first_name'].toString().toLowerCase();
    if (firstName !=
        userRegistrationTwoControllers.firstNameController.value
            .trim()
            .toLowerCase()) {
      idMessage = 'Invalid ID provided';
      print('invalid driver\'s license');
    } else {
      idMessage = 'Correct ID provided';
      Get.toNamed('/vehicle_registration_one');
    }
  } catch (e) {
    idMessage = 'Invalid ID provided';
    print(e);
  }
}
