import 'dart:io';

import 'package:get/get.dart';

import '../app.dart';

class WriteController extends GetxController {
  Rx<File?> selectedImage = Rx<File?>(null);

  void backhome() {
    Get.to(const App());
  }

  void pickImage() {}
}
