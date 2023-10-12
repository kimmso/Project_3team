import 'package:flutter_getx_palette_diary/src/controller/mypage_controller.dart';
import 'package:get/get.dart';

class ViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MyPageController());
  }
}
