import 'package:flutter/material.dart';
import 'package:flutter_getx_palette_diary/src/app.dart';
import 'package:get/get.dart';

class Write extends StatelessWidget {
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
              Get.to(App());
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('글쓰기'),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(App());
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
                child: TextField(
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                      labelText: '코멘트를 달아주세요.',
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
