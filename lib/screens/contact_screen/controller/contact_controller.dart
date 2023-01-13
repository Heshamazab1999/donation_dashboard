import 'package:donation_dashboard/controller/base_controller.dart';
import 'package:donation_dashboard/screens/contact_screen/model/contact_model.dart';
import 'package:donation_dashboard/screens/contact_screen/services/contact_services.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactController extends BaseController {
  final services = ContactServices();

  Future<void> openWhatsApp(String phoneNumber) async {
    await launchUrl(Uri.parse('https://wa.me/$phoneNumber'),
        mode: LaunchMode.externalApplication);
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Stream<List<ContactModel>> getAllContacts() => services.getAllContacts();
}
