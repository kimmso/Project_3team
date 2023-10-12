import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app.dart';

class WriteController extends GetxController {
  Rx<File?> selectedImage = Rx<File?>(null);
  TextEditingController textEditingController = TextEditingController();

  void backhome() {
    String text = textEditingController.value.text;
    print(' $text');
    Get.to(() => const App());
  }

  void pickImage() {}
}
