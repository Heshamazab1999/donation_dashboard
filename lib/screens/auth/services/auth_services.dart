import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donation_dashboard/component/custom_snackbar.dart';
import 'package:donation_dashboard/model/user_model.dart';
import 'package:donation_dashboard/routes/app_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final _store = FirebaseFirestore.instance;

  Future<UserModel> getUserByEmail(String password, String email) async {
    final data = await _store
        .collection("user_dashboard")
        .where("password", isEqualTo: password)
        .where("username", isEqualTo: email)
        .get();
    if (data.docs.isNotEmpty) {
      UserModel user = UserModel.fromSnapshot(data.docs.first);
      print(user.toJson());
      Get.toNamed(AppRoute.homeScreen);
      return user;
    }
    showCustomSnackBar(
        message: "خطاء فى الوصول الى المستخدم", isError: true);
    throw "Wrong to find your Email !";
  }
}
