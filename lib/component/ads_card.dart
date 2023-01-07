import 'package:donation_dashboard/component/custom_image.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
import 'package:flutter/material.dart';

class AdsCard extends StatelessWidget {
  const AdsCard({Key? key, this.image}) : super(key: key);
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: Dimensions.height * 0.25,
        width: Dimensions.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radiusDefault),
            border: Border.all(color: K.mainColor)),
        child:  CustomImage(
          image: image!,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
