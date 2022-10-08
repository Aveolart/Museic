// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:museic/widgets/like_playlist_download.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  double _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF165246),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    "Now Playing",
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  Icon(
                    Icons.queue_music,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 260,
              height: 260,
              color: Colors.white,
              child: Image.asset(
                "assets/wall 222 1.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Lyta and MohBad",
              style:
                  TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 17),
            ),
            SizedBox(height: 12),
            Text(
              "Formula",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            LikeShare(),
            Slider.adaptive(
              min: 0,
              max: 100,
              activeColor: Color(0xFFFD8744),
              inactiveColor: Colors.white,
              thumbColor: Colors.white,
              value: _sliderVal,
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue;
                });
              },
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1:15",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "3:20",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.fast_rewind_rounded, color: Colors.white, size: 40),
                SizedBox(width: 30),
                Icon(Icons.play_arrow_rounded, color: Colors.white, size: 40),
                SizedBox(width: 30),
                Icon(Icons.fast_forward_rounded, color: Colors.white, size: 40),
              ],
            )
          ],
        ),
      ),
    );
  }
}
