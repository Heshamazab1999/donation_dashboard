import 'package:donation_dashboard/component/ads_card.dart';
import 'package:donation_dashboard/component/custom_bottom_bar.dart';
import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/enum/view_state.dart';
import 'package:donation_dashboard/helper/dimensions.dart';
import 'package:donation_dashboard/screens/ads/controller/ads_controller.dart';
import 'package:donation_dashboard/screens/ads/model/ads_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AdsScreen extends StatelessWidget {
  const AdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AdsController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: K.whiteColor,
              ))
        ],
        backgroundColor: K.mainColor,
        title: Text(
          "الاعلانات",
          style: TextStyle(
              color: K.whiteColor, fontSize: Dimensions.fontSizeExtraLarge),
        ),
      ),
      body: SmartRefresher(
        controller: controller.refreshController,
        enablePullDown: true,
        enablePullUp: false,
        onRefresh: () {
          controller.onInit();
          controller.refreshController.refreshCompleted();
        },
        child: Obx(() => controller.state == ViewState.busy
            ? const Center(
                child: CircularProgressIndicator(
                color: K.mainColor,
              ))
            : StreamBuilder<List<AdsModel>>(
                stream: controller.getAllAds(),
                builder: (context, snapshot) {
                  if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (_, index) => AdsCard(
                              image: snapshot.data![index].image,
                            ));
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(color: K.mainColor),
                    );
                  }
                })),
      ),
      bottomNavigationBar: ClipPath(
        clipper: MyClipper(80),
        child: Container(
          width: Dimensions.width,
          height: 50,
          color: K.mainColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: K.mainColor,
        onPressed: () {
          controller.selectImage();
        },
        child: const Icon(Icons.add, color: K.whiteColor, size: 30),
      ),
    );
  }
}
