import 'package:flutter/material.dart';
import 'package:flutter_getx_palette_diary/src/binding/write_binding.dart';
import 'package:flutter_getx_palette_diary/src/controller/bottom_nav_controller.dart';
import 'package:flutter_getx_palette_diary/src/pages/mypage.dart';
import 'package:flutter_getx_palette_diary/src/pages/write.dart';
import 'package:flutter_getx_palette_diary/src/widget/image_data.dart';
import 'package:get/get.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('palette'),
          elevation: 0.0,
        ),
        body: _body(),
        floatingActionButton: controller.index == 0
            ? _floatingActionButton()
            : null, // 첫 번째 페이지에서만 버튼 표시
        floatingActionButtonLocation:
            FloatingActionButtonLocation.endFloat, // 추가: 오른쪽 하단 버튼

        bottomNavigationBar: _bottom(),
      ),
    );
  }

  Widget _bottom() {
    return BottomNavigationBar(
      currentIndex: controller.index,
      onTap: controller.changeIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            icon: ImageData(path: ImagePath.homeOff),
            activeIcon: ImageData(path: ImagePath.homeOn),
            label: 'home'),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Get.to(MyPage());
              },
              child: Icon(Icons.list_outlined)),
          activeIcon: Icon(Icons.list),
          label: 'mypage',
        ),
        BottomNavigationBarItem(
            icon: ImageData(path: ImagePath.homeOff),
            activeIcon: ImageData(path: ImagePath.homeOn),
            label: 'upload'),
      ],
    );
  }

  Widget _body() {
    return IndexedStack(
      index: controller.index,
    );
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        Get.to(const Write(), binding: WriteBinding());
      },
      child: const Icon(Icons.create_outlined),
    );
  }
}
