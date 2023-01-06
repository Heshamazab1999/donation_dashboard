import 'package:url_launcher/url_launcher.dart';

import '../../../controller/base_controller.dart';

class OrderDetailsController extends BaseController {
  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
