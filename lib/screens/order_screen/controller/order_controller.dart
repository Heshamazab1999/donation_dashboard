import 'package:donation_dashboard/controller/base_controller.dart';
import 'package:donation_dashboard/enum/view_state.dart';
import 'package:donation_dashboard/screens/contact_screen/model/contact_model.dart';
import 'package:donation_dashboard/screens/order_screen/services/order_services.dart';
import 'package:get/get.dart';

class OrderController extends BaseController {
  final services = OrderServices();
  final listOfUser = <ContactModel>[].obs;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    setState(ViewState.busy);
    listOfUser.assignAll(await services.getUserIds());
    for (var element in listOfUser) {
      await services.getOrders(id: element.id);
    }
    setState(ViewState.idle);
  }
}
