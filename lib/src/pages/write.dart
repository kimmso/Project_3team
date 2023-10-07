import 'package:flutter/material.dart';
import 'package:flutter_getx_palette_diary/src/controller/write_controller.dart';
import 'package:get/get.dart';

import '../widget/write_textfild.dart';

class Write extends GetView<WriteController> {
  const Write({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              controller.backhome();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('글쓰기'),
          actions: [
            IconButton(
                onPressed: () {
                  controller.backhome();
                },
                icon: const Icon(Icons.check)),
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 350,
                height: 300,
                decoration: const BoxDecoration(color: Colors.grey),
                child: Obx(() {
                  final selectedImage = controller.selectedImage.value;
                  return selectedImage != null
                      ? Image.file(selectedImage)
                      : const Text('사진을 선택해 주세요.');
                }),
              ),
              FloatingActionButton(
                onPressed: () {
                  controller.pickImage();
                },
                tooltip: '사진 선택',
                child: Icon(Icons.add_a_photo),
              ),
              SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(27.0),
                child: WriteTextfild(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
