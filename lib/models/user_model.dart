class UserModel {
  final String displayName;
  final String email;
  final String photoUrl;
  final String dateOfBirth;

  UserModel({
    required this.displayName,
    required this.email,
    required this.photoUrl,
    required this.dateOfBirth,
  });

  factory UserModel.fromFirebaseUser(dynamic user) {
    return UserModel(
      displayName: user.displayName ?? '',
      email: user.email ?? '',
      photoUrl: user.photoURL ?? '',
      dateOfBirth: "17/08/2004",
    );
  }
}
