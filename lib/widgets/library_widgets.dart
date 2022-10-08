// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LibraryWidgets extends StatefulWidget {
  const LibraryWidgets({super.key});

  @override
  State<LibraryWidgets> createState() => _LibraryWidgetsState();
}

class _LibraryWidgetsState extends State<LibraryWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Icon(
                  Icons.queue_music,
                  size: 28,
                  color: Color(0xFFFB5A00),
                ),
                SizedBox(width: 10),
                Text(
                  "Playlists",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Icon(
                  Icons.album,
                  size: 28,
                  color: Color(0xFFFB5A00),
                ),
                SizedBox(width: 10),
                Text(
                  "Albums",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Icon(
                  Icons.podcasts,
                  size: 28,
                  color: Color(0xFFFB5A00),
                ),
                SizedBox(width: 10),
                Text(
                  "Add Podcasts",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Icon(
                  Icons.person_add,
                  size: 28,
                  color: Color(0xFFFB5A00),
                ),
                SizedBox(width: 10),
                Text(
                  "Add Artist",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Icon(
                  Icons.download_for_offline_outlined,
                  size: 28,
                  color: Color(0xFFFB5A00),
                ),
                SizedBox(width: 10),
                Text(
                  "Downloaded",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
