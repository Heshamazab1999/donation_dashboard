import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
import 'package:donation_dashboard/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: K.mainColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_forward_ios))
        ],
        title: Text("المنتجات",
            style: TextStyle(
                color: K.whiteColor, fontSize: Dimensions.fontSizeExtraLarge)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoute.addProductScreen);
        },
        backgroundColor: K.mainColor,
        child: const Icon(Icons.add, color: K.whiteColor, size: 40),
      ),
    );
  }
}
