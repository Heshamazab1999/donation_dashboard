import 'package:donation_dashboard/controller/base_controller.dart';
import 'package:donation_dashboard/routes/app_route.dart';
import 'package:get/get.dart';

class MainController extends BaseController {
  final check = false.obs;
  final screens = [
    AppRoute.contactScreen,
    AppRoute.socialContactScreen,
    AppRoute.adsScreen,
  ];
  final labels = ["عملاء", "مواقع التواصل و ارقام الاتصال", "الاعلانات"];
}
