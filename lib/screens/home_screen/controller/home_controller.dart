import 'package:dio/dio.dart';
import 'package:donation_dashboard/controller/base_controller.dart';
import 'package:donation_dashboard/screens/category_screen/category_screen.dart';
import 'package:donation_dashboard/screens/main_screen/main_screen.dart';
import 'package:donation_dashboard/screens/order_screen/order_screen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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

  Future<void> sendNotification() async {
    const postUrl = 'https://fcm.googleapis.com/fcm/send';
    Dio dio = Dio();

    var token = await getDeviceToken();
    print('device token : $token');

    final data = {
      "data": {
        "message": "Accept Ride Request",
        "title": "This is Ride Request",
      },
      "to": token
    };

    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers["Authorization"] =
        'key=AAAAK77pS_M:APA91bEdjYfKufLMBKYt5tTPFD_fy06yG1ubQLPvYjEH8adE6wqMFFTGP1R4a_ZQmL4fH1xB1YT0ax5MvruunGMZZ0cm9Jv2o4ri6KGWlTySw9WD0I_RhrNhO28tG8zIIrJanxPds_Xj';

    try {
      final response = await dio.post(postUrl, data: data);

      if (response.statusCode == 200) {
        print('Request Sent To Driver');
      } else {
        print('notification sending failed');
      }
    } catch (e) {
      print('exception $e');
    }
  }

  Future<String?> getDeviceToken() async {
    print(await FirebaseMessaging.instance.getToken());
    return await FirebaseMessaging.instance.getToken();
  }
}
