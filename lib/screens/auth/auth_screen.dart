import 'package:donation_dashboard/component/custom_button.dart';
import 'package:donation_dashboard/component/custom_text_field.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
import 'package:donation_dashboard/screens/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    return Scaffold(
      backgroundColor: K.mainColor,
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: Dimensions.height * 0.4,
            decoration: BoxDecoration(
                color: K.whiteColor, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                      color: K.mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.fontSizeExtraLarge),
                ),
                CustomTextField(
                  controller: controller.editingControllerUserName,
                  label: "اسم المستخدم",
                  hint: "**********",
                  type: TextInputType.emailAddress,
                  onChange: (v) {
                    controller.email.value = v;
                  },
                ),
                Obx(() => CustomTextField(
                      obSecure: controller.obSecure,
                      controller: controller.editingControllerPassword,
                      label: "كلمه المرور",
                      hint: "**********",
                      type: TextInputType.emailAddress,
                      prefixIcon: IconButton(
                        icon: Icon(
                          controller.obSecure
                              ? Icons.visibility_off_outlined
                              : Icons.visibility,
                          color:
                              controller.obSecure ? K.hintColor : K.mainColor,
                        ),
                        onPressed: () {
                          controller.toggleObSecure();
                        },
                      ),
                      onChange: (v) {
                        controller.password.value = v;
                      },
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "تذكرنى".tr,
                      style: TextStyle(
                          color: K.mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.fontSizeDefault),
                    ),
                    Obx(() => Checkbox(
                        activeColor: K.mainColor,
                        value: controller.checkbox,
                        onChanged: (bool? v) {
                          controller.toggleCheckBox(v!);
                          controller.handleRemember(v);
                        })),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height * 0.02,
                ),
                Obx(() => controller.loading
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: K.mainColor,
                        ),
                      )
                    : CustomButton(
                        onPressed: () {
                          controller.login();
                        },
                        width: Dimensions.width - 50,
                        radius: Dimensions.radiusDefault,
                        height: Dimensions.height * 0.045,
                        buttonText: "تسجيل الدخول",
                      )),
                SizedBox(
                  height: Dimensions.height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
