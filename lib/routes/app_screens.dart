import 'package:donation_dashboard/routes/app_route.dart';
import 'package:donation_dashboard/screens/ads/ads_screen.dart';
import 'package:donation_dashboard/screens/auth/auth_screen.dart';
import 'package:donation_dashboard/screens/category_screen/add_product_screen.dart';
import 'package:donation_dashboard/screens/category_screen/category_screen.dart';
import 'package:donation_dashboard/screens/contact_screen/contact_screen.dart';
import 'package:donation_dashboard/screens/home_screen/home_screen.dart';
import 'package:donation_dashboard/screens/main_screen/main_screen.dart';
import 'package:donation_dashboard/screens/order_screen/order_screen.dart';
import 'package:donation_dashboard/screens/product_details/product_details.dart';
import 'package:donation_dashboard/screens/social_contacts/social_contacts.dart';
import 'package:get/get.dart';

class AppScreens {
  static final screens = [
    GetPage(name: AppRoute.homeScreen, page: () => const HomeScreen()),
    GetPage(name: AppRoute.categoryScreen, page: () => const CategoryScreen()),
    GetPage(name: AppRoute.mainScreen, page: () => const MainScreen()),
    GetPage(name: AppRoute.orderScreen, page: () => const OrderScreen()),
    GetPage(name: AppRoute.contactScreen, page: () => const ContactScreen()),
    GetPage(name: AppRoute.adsScreen, page: () => const AdsScreen()),
    GetPage(name: AppRoute.signInScreen, page: () => const SignScreen()),
    GetPage(
        name: AppRoute.socialContactScreen,
        page: () => const SocialContactScreen()),
    GetPage(
        name: AppRoute.addProductScreen, page: () => const AddProductScreen()),
    GetPage(
        name: AppRoute.productDetailsScreen,
        page: () => const ProductDetailsScreen()),
  ];
}
