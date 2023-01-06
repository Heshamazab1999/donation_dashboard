import 'package:donation_dashboard/constants.dart';
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
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
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
            height: 30,
            decoration: const BoxDecoration(
                color: K.mainColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(date!,
                    style: const TextStyle(
                      color: K.whiteColor,
                      fontSize: 18,
                    )),
                const Text(":تاريخ و وقت الطلب",
                    style: TextStyle(
                        color: K.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              const Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              Expanded(
                child: Text(
                  price!,
                  style: const TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              const Expanded(
                child: Text(
                  ": السعر",
                  style: TextStyle(color: K.blackColor, fontSize: 18),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              const Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              Expanded(
                child: Text(
                  send!,
                  style: const TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              const Expanded(
                child: Text(
                  ": التوصيل",
                  style: TextStyle(color: K.blackColor, fontSize: 18),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              const Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              Expanded(
                child: Text(
                  tax!,
                  style: const TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              const Expanded(
                child: Text(
                  ": الضريبه",
                  style: TextStyle(color: K.blackColor, fontSize: 18),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              const Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              Expanded(
                child: Text(
                  additional!,
                  style: const TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              const Expanded(
                child: Text(
                  ": خدمات اضافيه",
                  style: TextStyle(color: K.blackColor, fontSize: 18),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              const Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              Expanded(
                child: Text(
                  discount!,
                  style: const TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              const Expanded(
                child: Text(
                  ": الخصم",
                  style: TextStyle(color: K.blackColor, fontSize: 18),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 25),
              const Expanded(
                child: Text(
                  "دينار",
                  style: TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              Expanded(
                child: Text(
                  totalSalary!,
                  style: const TextStyle(color: K.blackColor, fontSize: 15),
                ),
              ),
              const Expanded(
                child: Text(
                  ": اجمالى السعر",
                  style: TextStyle(color: K.blackColor, fontSize: 18),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                paymentMethod!,
                style: const TextStyle(color: K.blueColor, fontSize: 15),
              ),
              const Text(
                "طريقه الدفع",
                style: TextStyle(color: K.blackColor, fontSize: 18),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                status!,
                style: const TextStyle(color: K.mainColor, fontSize: 15),
              ),
              const Text(
                ":حاله الطلب",
                style: TextStyle(color: K.blackColor, fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 40,
            width: K.width - 50,
            child: TextButton(
              onPressed: onTap,
              style: TextButton.styleFrom(
                  backgroundColor: K.mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: const Text(
                "تفاصيل الطلب",
                style: TextStyle(fontSize: 15, color: K.whiteColor),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
