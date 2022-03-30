import 'dart:convert';

class UserModel {
  final String id;
  final String name;
  final String token;
  final bool isAdmin;

  UserModel({
    required this.id,
    required this.name,
    required this.token,
    required this.isAdmin,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['user']['id'],
      name: map['user']['name'],
      token: map['token'],
      isAdmin: map['user']['isAdmin'],
    );
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "token": token,
        "isAdmin": isAdmin,
      };

  String toJson() => jsonEncode(toMap());
}
