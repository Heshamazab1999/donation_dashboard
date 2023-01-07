import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
import 'package:donation_dashboard/routes/app_route.dart';
import 'package:donation_dashboard/screens/main_screen/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: K.mainColor,
        actions: [
          Obx(() => Switch(
                value: controller.check.value,
                onChanged: (v) {
                  controller.check.value = v;
                },
                activeTrackColor: Colors.green,
                inactiveThumbColor: K.whiteColor,
                activeColor: K.whiteColor,
              ))
        ],
        leading: const Icon(Icons.notifications),
        centerTitle: true,
        title: const Text("مفتوح",
            style: TextStyle(color: K.whiteColor, fontSize: 20)),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          itemCount: controller.screens.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Get.toNamed(controller.screens[index]);
                },
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: K.whiteColor,
                  elevation: 1,
                  shadowColor: K.hintColor,
                  child: Container(
                    decoration: BoxDecoration(
                        color: K.whiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.ac_unit),
                        Text(
                          controller.labels[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: K.blackColor,
                              fontSize: Dimensions.fontSizeExtraLarge,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
