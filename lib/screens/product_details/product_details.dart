import 'package:donation_dashboard/component/custom_button.dart';
import 'package:donation_dashboard/component/custom_card_dtails.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/screens/product_details/controller/order_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OrderDetailsController());
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
        title: const Text("تفاصيل الطلب",
            style: TextStyle(fontSize: 20, color: K.whiteColor)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Spacer(),
              Text(
                "zozo",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                ": اسم العميل",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    controller.makePhoneCall("01004479160");
                  },
                  icon: const Icon(
                    Icons.phone,
                    color: K.mainColor,
                  )),
              const Spacer(),
              const Text(
                "0100479160",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Text(
                ":  رقم التليفون",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.location_on_rounded,
                    color: K.mainColor,
                  )),
              const Spacer(),
              const Text(
                "alex",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Text(
                ":  العنوان",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 35,
            width: K.width - 50,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: K.mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              child: const Text(
                "لا توجد رساله",
                style: TextStyle(color: K.whiteColor, fontSize: 14),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const CustomCardDetails(
            image: "",
            price: "50",
            message: "لا توجد رساله",
            name: "بلون 1",
            number: "10",
            totalPrice: "150",
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              CustomButton(
                buttonText: "قبول الطلب",
                onPressed: () {},
                radius: 4,
                width: 100,
                height: 30,
              ),
              const Spacer(),
              CustomButton(
                buttonText: "رفض الطلب",
                onPressed: () {},
                radius: 4,
                width: 100,
                height: 30,
              ),
              const Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
