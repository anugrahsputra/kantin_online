class UserModel {
  int? id;
  String? name, username, email, phoneNumber, profilePhotoUrl, token;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePhotoUrl,
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'phone_number': phoneNumber,
      'profile_photo_url': profilePhotoUrl,
      'token': token,
    };
  }
}
