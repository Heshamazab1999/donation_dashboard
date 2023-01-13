import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donation_dashboard/screens/contact_screen/model/contact_model.dart';

class ContactServices {
  final store = FirebaseFirestore.instance;

  Stream<List<ContactModel>> getAllContacts() {
    return store
        .collection("users")
        .snapshots()
        .transform(StreamTransformer.fromHandlers(handleData: (data, sink) {
      sink.add(data.docs.map((e) => ContactModel.fromJson(e)).toList());
    }));
  }
}
