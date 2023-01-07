import 'package:donation_dashboard/controller/base_controller.dart';
import 'package:donation_dashboard/screens/social_contacts/services/social_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialContactController extends BaseController {
  final service = SocialServices();
  final phone1 = ''.obs;
  final phone2 = ''.obs;
  final phone3 = ''.obs;
  final facebook = ''.obs;
  final instagram = ''.obs;
  final twitter = ''.obs;
  final snapchat = ''.obs;
  final email = ''.obs;
  final loading = false.obs;

  TextEditingController phone1Controller = TextEditingController();
  TextEditingController phone2Controller = TextEditingController();
  TextEditingController phone3Controller = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController snapchatController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  saveSocial() async {
    try {
      loading.value = true;
      await service.saveContact(
        email: email.value,
        facebook: facebook.value,
        instagram: instagram.value,
        twitter: twitter.value,
        snapChat: snapchat.value,
        phone1: phone1.value,
        phone2: phone2.value,
        phone3: phone3.value,
      );
      loading.value = false;
    } catch (e) {
      loading.value = false;
      print(e);
    }
  }
}
