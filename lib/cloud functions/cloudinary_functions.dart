import 'package:my_oga_mechanic/imports.dart';

final cloudinary = CloudinaryPublic('myogamechanic', 'kf3reywm', cache: false);

setNullProfilePicture() async {
  try {
    CloudinaryResponse response =
        await cloudinary.uploadFile(CloudinaryFile.fromUrl(
      "https://www.freeiconspng.com/thumbs/profile-icon-png/profile-icon-9.png",
      folder: 'userProfilePicture',
      resourceType: CloudinaryResourceType.Image,
    ));
    print(response.secureUrl);
    profilePictureUrl = response.secureUrl;
  } on CloudinaryException catch (e) {
    print(e.message);
    print(e.request);
  }
}

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

bool containImages = false;
final ImagePicker accidentImagePicker = ImagePicker();
final List accidentImageList = <String>[];
String accidentImage = '';

addAccidentImages() async {
  final XFile? image = await accidentImagePicker.pickImage(
    source: ImageSource.camera,
  );

  try {
    CloudinaryResponse response = await cloudinary.uploadFile(
      CloudinaryFile.fromFile(image!.path,
          folder: 'userAccidentImages',
          resourceType: CloudinaryResourceType.Image),
    );
    accidentImage = response.url;
    print(accidentImage);
    accidentImageList.add(accidentImage);
    print(accidentImageList);
  } on CloudinaryException catch (e) {
    print(e.message);
    print(e.request);
  }
}

bool containOtherImages = false;
final ImagePicker accidentOtherImagePicker = ImagePicker();
List accidentOtherImageList = <String>[];
String accidentOtherImage = '';

addOtherAccidentImages() async {
  final XFile? image = await accidentOtherImagePicker.pickImage(
    source: ImageSource.camera,
  );

  try {
    CloudinaryResponse response = await cloudinary.uploadFile(
      CloudinaryFile.fromFile(image!.path,
          folder: 'otherUserAccidentImages',
          resourceType: CloudinaryResourceType.Image),
    );
    accidentOtherImage = response.url;
    print(accidentOtherImage);
    accidentOtherImageList.add(accidentOtherImage);
    print(accidentOtherImageList);
  } on CloudinaryException catch (e) {
    print(e.message);
    print(e.request);
  }
}
