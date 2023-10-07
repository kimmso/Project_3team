import 'package:flutter_getx_palette_diary/src/controller/image_controller.dart';
import 'package:get/get.dart';

class ImageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ImagePickerController());
  }
}
