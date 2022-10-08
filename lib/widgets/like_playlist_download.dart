// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class LikeShare extends StatefulWidget {
  const LikeShare({super.key});

  @override
  State<LikeShare> createState() => _LikeShareState();
}

class _LikeShareState extends State<LikeShare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 20, left: 20),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.favorite_outline_outlined,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(height: 5),
              Text(
                "Like",
                style: TextStyle(
                    color: Color(0xFFFD8744),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.format_list_bulleted,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(height: 5),
              Text(
                "Playlist",
                style: TextStyle(
                    color: Color(0xFFFD8744),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.file_download_outlined,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(height: 5),
              Text(
                "Download",
                style: TextStyle(
                    color: Color(0xFFFD8744),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share_outlined,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(height: 5),
              Text(
                "Like",
                style: TextStyle(
                    color: Color(0xFFFD8744),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          ),
        ],
      ),
    );
  }
}
