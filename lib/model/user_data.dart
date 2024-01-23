class UserData {
  int id;
  String username;
  String email;
  String firstName;
  String lastName;
  String gender;
  String image;
  String token;

  UserData(this.id, this.username, this.email, this.firstName, this.lastName, this.gender, this.image, this.token);

  factory UserData.fromJson(dynamic json) {
    return UserData(json['id'] as int, json['username'] as String, json['email'] as String, json['firstName'] as String, json['lastName'] as String, json['gender'] as String, json['image'] as String, json['token'] as String);
  }
}
