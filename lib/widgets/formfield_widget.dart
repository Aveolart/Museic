// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  var controller;
  EmailField({super.key, required this.controller});
  // TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: TextStyle(
            color: Color(0xFFFCF8F3),
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          
          controller: controller,
          style: TextStyle(
            color: Color(0xFFFCF8F3),
            fontSize: 18,
          ),
          cursorHeight: 25,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              left: 10,
              top: 14,
              bottom: 14,
              right: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(width: 1.5, color: Colors.white), //<-- SEE HERE
            ),
          ),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}
