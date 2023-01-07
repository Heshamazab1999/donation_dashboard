import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? username;
  String? password;
  String? key;

  UserModel({this.password, this.username, this.key});

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    return UserModel(
        username: snapshot["username"],
        password: snapshot["password"],
        key: snapshot.id);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["username"] = username;
    map["password"] = password;
    return map;
  }
}
