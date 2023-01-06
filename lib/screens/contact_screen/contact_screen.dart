import 'package:donation_dashboard/component/personal_card.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
import 'package:donation_dashboard/screens/contact_screen/controller/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ContactController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: K.mainColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_forward_ios))
        ],
        centerTitle: true,
        title: Text("عملاء",
            style: TextStyle(
                fontSize: Dimensions.fontSizeLarge, color: K.whiteColor)),
      ),
      body: ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) => PersonalCard(
                image: "",
                callFunction: () {
                  controller.makePhoneCall("01004479160");
                },
                phone: "01004479160",
                socialFunction: () {
                  controller.openWhatsApp("+0201004479160");
                },
              )),
    );
  }
}
