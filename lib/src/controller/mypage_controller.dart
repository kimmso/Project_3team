import 'package:get/get.dart';

class MyPageController extends GetxController {
  var index = 0.obs;

  void changeIndex(int selectedIndex) {
    index.value = selectedIndex;
  }
}
