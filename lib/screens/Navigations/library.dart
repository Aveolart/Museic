// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:museic/widgets/library_widgets.dart';
import 'package:museic/widgets/most_listened.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF165246),
      body: Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Text(
                    "Library",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: "PoppinsReg",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.qr_code_scanner,
                    color: Color(0xFFFB5A00),
                  )
                ],
              ),
            ),
            LibraryWidgets(),
            SizedBox(height: 5),
            Text(
              "Most Listened",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return MostListened();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
