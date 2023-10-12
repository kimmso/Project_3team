import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/mypage_controller.dart';

class MyPage extends StatelessWidget {
  final MyPageController controller =
      Get.put(MyPageController()); // 컨트롤러 인스턴스 생성
  MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('palette'),
        elevation: 0.0,
      ),
      body: _myFeeds(),
    );
  }

  Widget _myFeeds() {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 1.0, mainAxisSpacing: 1.0),
        itemCount: 50,
        itemBuilder: (context, index) => Container(
              color: Colors.blueGrey,
            ));
  }
}
