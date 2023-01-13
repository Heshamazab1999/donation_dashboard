import 'package:cloud_firestore/cloud_firestore.dart';

class ContactModel {
  final String? name;
  final String? deviceToken;
  final String? id;
  final String? phone;
  final String? key;

  ContactModel({this.name, this.deviceToken, this.id, this.phone, this.key});

  factory ContactModel.fromJson(DocumentSnapshot snapshot) {
    return ContactModel(
        name: snapshot["name"],
        deviceToken: snapshot["deviceToken"],
        id: snapshot["id"],
        key: snapshot.id,
        phone: snapshot["phone"]);
  }
}
