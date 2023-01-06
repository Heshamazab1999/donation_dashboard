import 'package:donation_dashboard/controller/base_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AdsController extends BaseController {
  final _picker = ImagePicker();
  final _image = ''.obs;

  String get images => _image.value;

  selectImage() async {
    try {
      final XFile? image =
          await _picker.pickImage(source: ImageSource.gallery);

      if (image != null) _image.value = image.path;
    } catch (e) {
      print(e.toString());
    }
  }
}
