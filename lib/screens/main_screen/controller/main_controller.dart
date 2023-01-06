import 'package:donation_dashboard/controller/base_controller.dart';
import 'package:donation_dashboard/routes/app_route.dart';
import 'package:donation_dashboard/screens/ads/ads_screen.dart';
import 'package:donation_dashboard/screens/contact_screen/contact_screen.dart';
import 'package:get/get.dart';

class MainController extends BaseController {
  final check = false.obs;
  final screens = [
    AppRoute.contactScreen,
    AppRoute.contactScreen,
    AppRoute.adsScreen,
  ];
}
