import 'package:donation_dashboard/component/card_order.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/routes/app_route.dart';
import 'package:donation_dashboard/screens/order_screen/controller/order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OrderController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: K.mainColor,
          elevation: 0,
          title: const Text("الطلبات",
              style: TextStyle(
                  color: K.whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (_, index) => CustomCardOrder(
                  onTap: () {
                    Get.toNamed(AppRoute.productDetailsScreen);
                  },
                  additional: "50",
                  date: "10/12/2022",
                  discount: "50",
                  paymentMethod: "payment",
                  price: "100",
                  send: "50",
                  status: "success",
                  tax: "50",
                  totalSalary: "50",
                )),
      ),
    );
  }
}
