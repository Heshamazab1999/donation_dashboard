import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,
    this.hint,
    this.icon,
    this.label,
    this.onChange,
    this.controller,
    this.obSecure=false,
    this.prefixIcon,
    this.type})
      : super(key: key);
  final Function(String)? onChange;
  final String? label;
  final String? hint;
  final IconData? icon;
  final TextInputType? type;
  final bool? obSecure;
  final IconButton? prefixIcon;

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextField(
        controller: controller,
        keyboardType: type,
        onChanged: onChange,
        autofocus: true,
        obscureText: obSecure!,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: Icon(icon, color: K.hintColor, size: 25),
            labelText: label!,
            labelStyle: TextStyle(
                color: K.hintColor, fontSize: Dimensions.fontSizeDefault),
            hintStyle: TextStyle(
                fontSize: Dimensions.fontSizeExtraLarge, color: K.blackColor),
            hintText: hint!,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: K.hintColor),
                borderRadius: BorderRadius.circular(Dimensions.radiusDefault)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: K.mainColor),
                borderRadius: BorderRadius.circular(Dimensions.radiusDefault))),
      ),
    );
  }
}
