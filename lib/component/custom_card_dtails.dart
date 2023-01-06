import 'package:donation_dashboard/component/custom_image.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:flutter/material.dart';

class CustomCardDetails extends StatelessWidget {
  const CustomCardDetails(
      {Key? key,
      this.price,
      this.image,
      this.message,
      this.name,
      this.number,
      this.totalPrice})
      : super(key: key);
  final String? name;
  final String? message;
  final String? image;
  final String? price;
  final String? number;
  final String? totalPrice;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: K.mainColor,
        borderRadius: BorderRadius.circular(5),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Column(
            children: [
              Text(
                name!,
                style: const TextStyle(
                  color: K.whiteColor,
                  fontSize: 16,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Material(
                          color: K.whiteColor,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Spacer(),
                                  const Text(
                                    "دينار",
                                    style: TextStyle(
                                        color: K.blackColor, fontSize: 15),
                                  ),
                                  const Spacer(),
                                  Text(
                                    price!,
                                    style: const TextStyle(
                                        color: K.blackColor, fontSize: 15),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    ": السعر",
                                    style: TextStyle(
                                        color: K.mainColor, fontSize: 18),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Spacer(),
                                  const Spacer(),
                                  Text(
                                    number!,
                                    style: const TextStyle(
                                        color: K.blackColor, fontSize: 15),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    ": العدد",
                                    style: TextStyle(
                                        color: K.mainColor, fontSize: 18),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: K.hintColor,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Spacer(),
                                  const Text(
                                    "دينار",
                                    style: TextStyle(
                                        color: K.blackColor, fontSize: 15),
                                  ),
                                  const Spacer(),
                                  Text(
                                    totalPrice!,
                                    style: const TextStyle(
                                        color: K.blackColor, fontSize: 15),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    ": الاجمالى",
                                    style: TextStyle(
                                        color: K.mainColor, fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomImage(
                      image: image!,
                      height: 110,
                      width: 100,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                          color: K.whiteColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5))),
                      child:  Center(
                          child: Text(
                        message!,
                        style:const TextStyle(color: K.mainColor, fontSize: 15),
                      )),
                    ),
                  ),
                  const Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          ":الرسائل",
                          style: TextStyle(color: K.whiteColor),
                        ),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
