import 'package:flutter/material.dart';
import 'package:flutter_getx_palette_diary/src/controller/write_controller.dart';
import 'package:flutter_getx_palette_diary/src/widget/write_textfild.dart';
import 'package:get/get.dart';

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
                child: const Icon(Icons.add_a_photo_outlined),
              ),
              const SizedBox(
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
