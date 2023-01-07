import 'package:donation_dashboard/controller/base_controller.dart';
import 'package:donation_dashboard/enum/view_state.dart';
import 'package:donation_dashboard/screens/ads/model/ads_model.dart';
import 'package:donation_dashboard/screens/ads/services/ads_services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AdsController extends BaseController {
  final service = AdsServices();
  final _picker = ImagePicker();
  final _image = ''.obs;
  final loading = false.obs;
  final listOfAds = <AdsModel>[].obs;
  final refreshController = RefreshController();

  String get images => _image.value;

  @override
  onInit() async {
    super.onInit();
    setState(ViewState.busy);
    listOfAds.assignAll(await service.getAds());
    setState(ViewState.idle);
  }

  selectImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        _image.value = image.path;
        await service.savePhoto(_image.value, image.name);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Stream<List<AdsModel>> getAllAds() {
    return service.getAllAds();
  }
}
