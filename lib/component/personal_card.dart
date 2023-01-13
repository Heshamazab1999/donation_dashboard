import 'package:donation_dashboard/component/custom_button.dart';
import 'package:donation_dashboard/component/custom_image.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
import 'package:flutter/material.dart';

class PersonalCard extends StatelessWidget {
  const PersonalCard(
      {Key? key,
      this.phone,
      // this.image,
      this.name,
      this.callFunction,
      this.socialFunction})
      : super(key: key);
  // final String? image;
  final String? phone;
  final String? name;
  final Function()? callFunction;
  final Function()? socialFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 2,
        shadowColor: K.hintColor,
        color: K.mainColor,
        borderRadius: BorderRadius.circular(Dimensions.radiusDefault),
        child: Column(
          children: [
            Text(
              name!,
              style: TextStyle(
                  color: K.whiteColor,
                  fontSize: Dimensions.fontSizeLarge,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Material(
                color: K.whiteColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(Dimensions.radiusDefault),
                  bottomRight: Radius.circular(Dimensions.radiusDefault),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(phone!,
                            style: TextStyle(
                              color: K.blackColor,
                              fontSize: Dimensions.fontSizeLarge,
                            )),
                        Row(
                          children: [
                            CustomButton(
                              onPressed: socialFunction,
                              radius: Dimensions.radiusSmall,
                              height: Dimensions.height * 0.04,
                              width: Dimensions.width / 9,
                              icon: Icons.whatsapp,
                            ),
                            const SizedBox(width: 10),
                            CustomButton(
                              onPressed: callFunction,
                              radius: Dimensions.radiusSmall,
                              height: Dimensions.height * 0.04,
                              width: Dimensions.width / 2,
                              buttonText: "اتصال",
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                        clipBehavior: Clip.antiAlias,
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: K.mainColor),
                        child: Image.asset('assets/images/user.png',
                            fit: BoxFit.cover))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
