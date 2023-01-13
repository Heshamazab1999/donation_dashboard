import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donation_dashboard/screens/contact_screen/model/contact_model.dart';

class OrderServices {
  final store = FirebaseFirestore.instance;

  Future<List<ContactModel>> getUserIds() async {
    final data = await store.collection("users").get();
    return data.docs.map((e) => ContactModel.fromJson(e)).toList();
  }

  getOrders({String? id}) async {
    final data = await store
        .collection("products")
        .doc(id)
        .collection("listOfItems")
        .get();
    print(data);
  }
}
