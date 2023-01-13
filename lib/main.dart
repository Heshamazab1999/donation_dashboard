import 'package:donation_dashboard/helper/cache_helper.dart';
import 'package:donation_dashboard/helper/local_notification.dart';
import 'package:donation_dashboard/model/notification_model.dart';
import 'package:donation_dashboard/routes/app_route.dart';
import 'package:donation_dashboard/routes/app_screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

NotificationService notificationService = NotificationService();

Future<void> messageHandler(RemoteMessage message) async {
  NotificationModel notificationMessage =
      NotificationModel.fromJson(message.data);
  notificationService.showNotification(
      1, notificationMessage.title!, notificationMessage.message!, "1");
  print('notification from background : ${notificationMessage.title}');

}

Future<void> firebaseMessagingListener() async {
  FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
    NotificationModel notificationMessage =
        NotificationModel.fromJson(message.data);
    notificationService.showNotification(
        1, notificationMessage.title!, notificationMessage.message!, "1");

  });
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  CacheHelper.init();
  await notificationService.init();
  firebaseMessagingListener();
  FirebaseMessaging.onBackgroundMessage(messageHandler);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splashScreen,
      getPages: AppScreens.screens,
    );
  }
}
