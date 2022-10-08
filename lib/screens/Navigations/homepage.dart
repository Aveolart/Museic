// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:museic/widgets/pages_indicate.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController searchController = TextEditingController();
  final ScrollController scrollCont = ScrollController();
  final bannerController =
      PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF165246),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35),
          Container(
            decoration: BoxDecoration(),
            // height: 40,
            margin: EdgeInsets.only(left: 18, right: 18),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5, right: 8, top: 0),
                  // margin: EdgeInsets.only(right: 16),
                  width: MediaQuery.of(context).size.width * 0.78,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFF1DAC4),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        size: 28,
                        color: Color(0xFFBEB2AE),
                      ),
                      Expanded(
                        child: TextField(
                          controller: searchController,
                          style: TextStyle(fontSize: 20),
                          cursorHeight: 20,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 2, top: 0, bottom: 3),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.notifications_outlined,
                  color: Color(0xFFF1DAC4),
                  size: 28,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(height: 10),
          SizedBox(
            height: 130,
            // width: MediaQuery.of(context).size.width * 0.9,
            child: PageView.builder(
              controller: bannerController,
              itemCount: 5,
              itemBuilder: (context, index) {
                return PagesIndicate();
              },
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: bannerController,
                count: 5,
                axisDirection: Axis.horizontal,
                effect: ExpandingDotsEffect(
                    dotHeight: 5,
                    dotWidth: 20,
                    activeDotColor: Color(0xFF0F372F),
                    dotColor: Color(0xFFC9B6A3)),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Hello User
                Text(
                  "Hello Annabel",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                //Recently Played
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recently played",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: Color(0xFFFB5A00),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  // margin: EdgeInsets.only(right: 20),
                  height: 64,
                  child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 12),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/wall 222 1.png"),
                            radius: 32,
                            // child:
                            //     Image(image: AssetImage("assets/wall 222 1.png")),
                          ),
                        );
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trending",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: Color(0xFFFB5A00),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height / 3.2,
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 140,
                            // childAspectRatio: 3 / 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 10),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset(
                              "assets/wall 222 1.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Soul",
                            style: TextStyle(color: Color(0xFFB9E1D9)),
                          )
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
