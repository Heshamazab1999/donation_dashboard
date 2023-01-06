import 'package:donation_dashboard/component/custom_image.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
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
                style: TextStyle(
                  color: K.whiteColor,
                  fontSize: Dimensions.fontSizeLarge,
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
                                  Text(
                                    "دينار",
                                    style: TextStyle(
                                        color: K.blackColor,
                                        fontSize: Dimensions.fontSizeLarge),
                                  ),
                                  const Spacer(),
                                  Text(
                                    price!,
                                    style: TextStyle(
                                        color: K.blackColor,
                                        fontSize: Dimensions.fontSizeLarge),
                                  ),
                                  const Spacer(),
                                  Text(
                                    ": السعر",
                                    style: TextStyle(
                                        color: K.mainColor,
                                        fontSize: Dimensions.fontSizeLarge),
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
                                    style: TextStyle(
                                        color: K.blackColor,
                                        fontSize: Dimensions.fontSizeLarge),
                                  ),
                                  const Spacer(),
                                  Text(
                                    ": العدد",
                                    style: TextStyle(
                                        color: K.mainColor,
                                        fontSize: Dimensions.fontSizeLarge),
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
                                  Text(
                                    "دينار",
                                    style: TextStyle(
                                        color: K.blackColor,
                                        fontSize: Dimensions.fontSizeLarge),
                                  ),
                                  const Spacer(),
                                  Text(
                                    totalPrice!,
                                    style: TextStyle(
                                        color: K.blackColor,
                                        fontSize: Dimensions.fontSizeLarge),
                                  ),
                                  const Spacer(),
                                  Text(
                                    ": الاجمالى",
                                    style: TextStyle(
                                        color: K.mainColor,
                                        fontSize: Dimensions.fontSizeLarge),
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
                      height: Dimensions.height * 0.11,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: Dimensions.height * 0.05,
                      decoration: const BoxDecoration(
                          color: K.whiteColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5))),
                      child: Center(
                          child: Text(
                        message!,
                        style: TextStyle(
                            color: K.mainColor,
                            fontSize: Dimensions.fontSizeLarge),
                      )),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          ":الرسائل",
                          style: TextStyle(
                              color: K.whiteColor,
                              fontSize: Dimensions.fontSizeLarge),
                        ),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
