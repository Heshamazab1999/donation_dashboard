import 'package:donation_dashboard/component/custom_button.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
import 'package:flutter/material.dart';

class CustomCardOrder extends StatelessWidget {
  const CustomCardOrder(
      {Key? key,
      this.onTap,
      this.status,
      this.paymentMethod,
      this.totalSalary,
      this.discount,
      this.additional,
      this.date,
      this.price,
      this.send,
      this.tax})
      : super(key: key);
  final String? date;
  final String? price;
  final String? send;
  final String? tax;
  final String? additional;
  final String? discount;
  final String? totalSalary;
  final String? status;
  final String? paymentMethod;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: K.whiteColor,
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: K.mainColor, width: 1)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            clipBehavior: Clip.antiAlias,
            width: double.infinity,
            height: K.height * 0.05,
            decoration: const BoxDecoration(
                color: K.mainColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(date!,
                    style: TextStyle(
                      color: K.whiteColor,
                      fontSize: Dimensions.fontSizeLarge,
                    )),
                Text(":تاريخ و وقت الطلب",
                    style: TextStyle(
                        color: K.whiteColor,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  price!,
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  ": السعر",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  send!,
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  ": التوصيل",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  tax!,
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  ": الضريبه",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  additional!,
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  ": خدمات اضافيه",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  discount!,
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  ": الخصم",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  totalSalary!,
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
              Expanded(
                child: Text(
                  ": اجمالى السعر",
                  style: TextStyle(
                      color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                paymentMethod!,
                style: TextStyle(
                    color: K.blueColor, fontSize: Dimensions.fontSizeLarge),
              ),
              Text(
                "طريقه الدفع",
                style: TextStyle(
                    color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                status!,
                style: TextStyle(
                    color: K.mainColor, fontSize: Dimensions.fontSizeLarge),
              ),
              Text(
                ":حاله الطلب",
                style: TextStyle(
                    color: K.blackColor, fontSize: Dimensions.fontSizeLarge),
              ),
            ],
          ),
          CustomButton(
            buttonText: "تفاصيل  الطلب",
            onPressed: onTap,
            radius: Dimensions.radiusExtraLarge,
            width: Dimensions.width / 1.2,
            height: Dimensions.height * 0.04,
          ),
          const SizedBox(
            height: Dimensions.radiusDefault,
          )
        ],
      ),
    );
  }
}
