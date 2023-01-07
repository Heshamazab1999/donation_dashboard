import 'package:donation_dashboard/component/custom_button.dart';
import 'package:donation_dashboard/component/custom_text_field.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
import 'package:donation_dashboard/screens/social_contacts/controller/social_contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SocialContactScreen extends StatelessWidget {
  const SocialContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SocialContactController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_forward_ios))
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: K.mainColor,
        automaticallyImplyLeading: false,
        title: Text("مواقع التواصل وارقام الاتصال",
            style: TextStyle(
                color: K.whiteColor, fontSize: Dimensions.fontSizeExtraLarge)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                "اضف ارقام الهاتف",
                style: TextStyle(
                    fontSize: Dimensions.fontSizeExtraLarge,
                    color: K.blackColor),
              ),
            ),
            CustomTextField(
              type: TextInputType.phone,
              controller: controller.phone1Controller,
              icon: FontAwesomeIcons.phone,
              hint: "010044479160",
              label: "رقم الهاتف 1",
              onChange: (v) {
                controller.phone1.value = v;
              },
            ),
            CustomTextField(
              type: TextInputType.phone,
              controller: controller.phone2Controller,
              icon: FontAwesomeIcons.phone,
              hint: "010044479160",
              label: "رقم الهاتف 2",
              onChange: (v) {
                controller.phone2.value = v;
              },
            ),
            CustomTextField(
              type: TextInputType.phone,
              controller: controller.phone3Controller,
              icon: FontAwesomeIcons.phone,
              hint: "010044479160",
              label: "رقم الهاتف 3",
              onChange: (v) {
                controller.phone3.value = v;
              },
            ),
            const SizedBox(height: 15),
            Center(
              child: Text(
                "اضف مواقع التواصل الاجتماعى ",
                style: TextStyle(
                    fontSize: Dimensions.fontSizeExtraLarge,
                    color: K.blackColor),
              ),
            ),
            const SizedBox(height: 15),
            CustomTextField(
              type: TextInputType.emailAddress,
              controller: controller.facebookController,
              icon: FontAwesomeIcons.facebookF,
              hint: "",
              label: "فيسبوك",
              onChange: (v) {
                controller.facebook.value = v;
              },
            ),
            CustomTextField(
              type: TextInputType.emailAddress,
              controller: controller.instagramController,
              icon: FontAwesomeIcons.instagram,
              hint: "",
              label: "الانستجرام",
              onChange: (v) {
                controller.instagram.value = v;
              },
            ),
            CustomTextField(
              type: TextInputType.emailAddress,
              controller: controller.twitterController,
              icon: FontAwesomeIcons.twitter,
              hint: "",
              label: "تويتر",
              onChange: (v) {
                controller.twitter.value = v;
              },
            ),
            CustomTextField(
              type: TextInputType.emailAddress,
              controller: controller.snapchatController,
              icon: FontAwesomeIcons.snapchat,
              hint: "",
              label: "سناب شات",
              onChange: (v) {
                controller.snapchat.value = v;
              },
            ),
            Center(
              child: Text(
                "اضف لينك الموقع",
                style: TextStyle(
                    fontSize: Dimensions.fontSizeExtraLarge,
                    color: K.blackColor),
              ),
            ),
            CustomTextField(
              type: TextInputType.emailAddress,
              controller: controller.emailController,
              icon: FontAwesomeIcons.google,
              hint: "",
              label: "الموقع الالكترونى",
              onChange: (v) {
                controller.email.value = v;
              },
            ),
            Obx(() => controller.loading.value
                ? const Center(
                    child: CircularProgressIndicator(
                      color: K.mainColor,
                    ),
                  )
                : CustomButton(
                    width: Dimensions.width - 20,
                    onPressed: () {
                      controller.saveSocial();
                      controller.emailController.clear();
                      controller.facebookController.clear();
                      controller.instagramController.clear();
                      controller.twitterController.clear();
                      controller.snapchatController.clear();
                      controller.phone1Controller.clear();
                      controller.phone2Controller.clear();
                      controller.phone3Controller.clear();
                    },
                    buttonText: "حفظ",
                  )),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
