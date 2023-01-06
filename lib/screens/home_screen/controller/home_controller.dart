import 'package:donation_dashboard/controller/base_controller.dart';
import 'package:donation_dashboard/screens/category_screen/category_screen.dart';
import 'package:donation_dashboard/screens/main_screen/main_screen.dart';
import 'package:donation_dashboard/screens/order_screen/order_screen.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final _selectIndex = 0.obs;

  int get selectIndex => _selectIndex.value;

  changeIndex(int index) {
    _selectIndex.value = index;
  }

  final list = [
    const OrderScreen(),
    const MainScreen(),
    const CategoryScreen()
  ];
}
