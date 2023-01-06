import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: K.mainColor,
        actions: [
          Switch(
            value: true,
            onChanged: (v) {},
            activeTrackColor: Colors.green,
            inactiveThumbColor: K.whiteColor,
            activeColor: K.whiteColor,
          )
        ],
        leading: const Icon(Icons.notifications),
        centerTitle: true,
        title: const Text("مفتوح",
            style: TextStyle(color: K.whiteColor, fontSize: 20)),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          itemCount: 4,
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
                  Get.toNamed(AppRoute.contactScreen);
                },
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: K.whiteColor,
                  elevation: 1,
                  shadowColor: K.hintColor,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.ac_unit),
                        Text(
                          "عملاء",
                          style: TextStyle(
                              color: K.blackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: K.whiteColor,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              )),
    );
  }
}
