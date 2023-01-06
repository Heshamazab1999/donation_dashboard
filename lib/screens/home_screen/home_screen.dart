import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/screens/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
        body: Obx(() => controller.list.elementAt(controller.selectIndex)),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            selectedItemColor: K.whiteColor,
            backgroundColor: K.mainColor,
            currentIndex: controller.selectIndex,
            onTap: (index) {
              controller.changeIndex(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: "الطلبات"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "الرئيسيه"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view_rounded), label: "المنتجات"),
            ],
          ),
        ));
  }
}
