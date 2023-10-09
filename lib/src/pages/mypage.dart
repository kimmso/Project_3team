import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 8.0, mainAxisExtent: 8.0),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.blueGrey,
          alignment: Alignment.center,
          child: Text('Item $index'),
        );
      },
      itemCount: 20,
    ));
  }
}
