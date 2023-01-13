import 'package:donation_dashboard/component/personal_card.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
import 'package:donation_dashboard/screens/contact_screen/controller/contact_controller.dart';
import 'package:donation_dashboard/screens/contact_screen/model/contact_model.dart';
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
      body: StreamBuilder<List<ContactModel>>(
          stream: controller.getAllContacts(),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data!.isNotEmpty) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (_, index) => PersonalCard(
                        name: snapshot.data![index].name,
                        callFunction: () {
                          controller
                              .makePhoneCall(snapshot.data![index].phone!);
                        },
                        phone: snapshot.data![index].phone,
                        socialFunction: () {
                          controller.openWhatsApp(snapshot.data![index].phone!);
                        },
                      ));
            } else {
              return const Center(
                child: CircularProgressIndicator(color: K.mainColor),
              );
            }
          }),
    );
  }
}
