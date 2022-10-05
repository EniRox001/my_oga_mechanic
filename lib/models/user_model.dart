class User {
  int id;
  String phoneNumber;
  String profilePicture;
  String emailAddress;
  String homeAddress;
  String officeAddress;
  String firstName;
  String lastName;
  String dateOfBirth;
  String driversLicense;
  Map cars;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'phone number': phoneNumber,
      'profile picture': profilePicture,
      'email address': emailAddress,
      'home address': homeAddress,
      'office address': officeAddress,
      'first name': firstName,
      'last name': lastName,
      'date of birth': dateOfBirth,
      'drivers license': driversLicense,
      'cars': cars,
    };
  }

  User(
    this.id,
    this.phoneNumber,
    this.profilePicture,
    this.emailAddress,
    this.homeAddress,
    this.officeAddress,
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.driversLicense,
    this.cars,
  );
}
