// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MostListened extends StatefulWidget {
  const MostListened({super.key});

  @override
  State<MostListened> createState() => _MostListenedState();
}

class _MostListenedState extends State<MostListened> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 135,
      // height: 190,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(right: 15, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(
                "assets/wall 222 1.png",
              ),
              height: 115,
              width: 115,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 120,
            child: Text(
              "WATAWI (feat Davido & Focalistic)",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Ckay",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0x7FFFFFFF)),
          )
        ],
      ),
    );
  }
}
