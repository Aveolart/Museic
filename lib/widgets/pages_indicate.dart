import 'package:flutter/material.dart';

class PagesIndicate extends StatelessWidget {
  const PagesIndicate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 280,
      height: 115,
      decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(10)),
      child: Image.asset(
        "assets/wall 222 1.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
