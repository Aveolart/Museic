// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
            image: AssetImage("assets/austin-neill-IfhsSUuzaHc-unsplash2.png"),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 90,
              left: 80,
              right: 80,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFB5A00),
                ),
                // width: 160,
                height: 55,
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: "PoppinsReg",
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 190,
              left: 40,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: RichText(
                  text: TextSpan(
                    text: 'Find a ',
                    style: TextStyle(
                        fontSize: 34,
                        fontFamily: "PoppinsReg",
                        fontWeight: FontWeight.bold),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'MUSEIC',
                        style: TextStyle(
                            // fontWeight: FontWeight.w600,
                            color: Color(0xFF4FB4A0),
                            fontFamily: "PoppinsItalic"),
                      ),
                      TextSpan(text: ' for Every Moment'),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 110,
              right: 110,
              child: Text(
                "MUSEIC",
                style: TextStyle(
                    letterSpacing: 1,
                    fontFamily: "PoppinsReg",
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
