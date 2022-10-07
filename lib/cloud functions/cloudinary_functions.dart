import 'package:my_oga_mechanic/imports.dart';

setProfilePicture() async {
  final XFile? image = await profilePicturePicker.pickImage(
    source: ImageSource.gallery,
  );
  try {
    CloudinaryResponse response = await cloudinary.uploadFile(
      CloudinaryFile.fromFile(
        image!.path,
        folder: 'userProfilePicture',
        resourceType: CloudinaryResourceType.Image,
      ),
    );
    profilePictureUrl = response.secureUrl;
    print(response.secureUrl);
  } on CloudinaryException catch (e) {
    print(e.message);
    print(e.request);
  }
}
