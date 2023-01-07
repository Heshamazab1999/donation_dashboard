import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donation_dashboard/component/custom_snackbar.dart';

class SocialServices {
  final store = FirebaseFirestore.instance;

  saveContact({
    String? phone1,
    String? phone2,
    String? phone3,
    String? instagram,
    String? snapChat,
    String? facebook,
    String? twitter,
    String? email,
  }) async {
    try {
      final data = await store.collection("contactUs").add({
        "phone1": phone1,
        "phone2": phone2,
        "phone3": phone3,
        "instagram": instagram,
        "snapshat": snapChat,
        "facebook": facebook,
        "twitter": twitter,
        "email": email
      });
      showCustomSnackBar(message: "تم الارسال", isError: false);
    } catch (e) {
      showCustomSnackBar(message: "توجد مشكله فى الارسال", isError: true);
    }
  }
}
