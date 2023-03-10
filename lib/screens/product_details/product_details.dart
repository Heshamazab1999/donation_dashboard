import 'package:donation_dashboard/component/custom_button.dart';
import 'package:donation_dashboard/component/custom_card_dtails.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
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
        title: Text("تفاصيل الطلب",
            style: TextStyle(
                fontSize: Dimensions.fontSizeExtraLarge, color: K.whiteColor)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              Text(
                "zozo",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: Dimensions.fontSizeLarge,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                ": اسم العميل",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: Dimensions.fontSizeLarge,
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
              Text(
                "0100479160",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: Dimensions.fontSizeLarge,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                ":  رقم التليفون",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: Dimensions.fontSizeLarge,
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
              Text(
                "alex",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: Dimensions.fontSizeLarge,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                ":  العنوان",
                style: TextStyle(
                    color: K.hintColor,
                    fontSize: Dimensions.fontSizeLarge,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          CustomButton(
            buttonText: "تفاصيل  الطلب",
            onPressed: () {},
            radius: Dimensions.radiusDefault,
            width: Dimensions.width / 1.2,
            height: Dimensions.height * 0.04,
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
                radius: Dimensions.radiusDefault,
                width: Dimensions.width / 3,
                height: Dimensions.height * 0.04,
              ),
              const Spacer(),
              CustomButton(
                buttonText: "رفض الطلب",
                onPressed: () {},
                radius: Dimensions.radiusDefault,
                width: Dimensions.width / 3,
                height: Dimensions.height * 0.04,
              ),
              const Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
