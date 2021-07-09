import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:velocity_x/velocity_x.dart';

import '../spacer.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: context.screenWidth,
            height: 380,
            decoration: BoxDecoration(
              color: HexColor("004343"),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello, Jhon Steward",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SpaceY(5),
                Text(
                  "Monday, 17 Jan 2022",
                  style: TextStyle(
                    color: HexColor("#77E6B6"),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 60,
            right: 15,
            child: Image.asset("assets/Default.png"),
          ),
          Positioned(
            top: 130,
            left: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "08",
                        style: TextStyle(
                          color: HexColor("#77E6B6"),
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SpaceY(5),
                      Text(
                        "tasks pending",
                        style: TextStyle(
                          color: HexColor("#77E6B6"),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceX(30),
                Image.asset("assets/line.png"),
                SpaceX(30),
                Container(
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "15",
                        style: TextStyle(
                          color: HexColor("#77E6B6"),
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SpaceY(5),
                      Text(
                        "tasks in progress",
                        style: TextStyle(
                          color: HexColor("#77E6B6"),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceX(30),
                Image.asset("assets/line.png"),
                SpaceX(30),
                Container(
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "29",
                        style: TextStyle(
                          color: HexColor("#77E6B6"),
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SpaceY(5),
                      Text(
                        "tasks completed",
                        style: TextStyle(
                          color: HexColor("#77E6B6"),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 260,
            left: 15,
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 175,
                        width: context.screenWidth * .45,
                        child: Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 43,
                                  height: 43,
                                  decoration: BoxDecoration(
                                    color: HexColor('#E3E6FF'),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Image.asset("assets/bag.png"),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "My Task",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('#004343'),
                                      ),
                                    ),
                                    SpaceY(5),
                                    Text(
                                      "34 new task added",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: HexColor('#2D5151'),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SpaceX(10),
                      Container(
                        height: 175,
                        width: context.screenWidth * .45,
                        child: Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 43,
                                  height: 43,
                                  decoration: BoxDecoration(
                                    color: HexColor('#E0F4F4'),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Image.asset("assets/checklist.png"),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "My Ticket",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('#004343'),
                                      ),
                                    ),
                                    SpaceY(5),
                                    Text(
                                      "You have 400 Tickets",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: HexColor('#2D5151'),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SpaceY(10),
                  Row(
                    children: [
                      Container(
                        height: 175,
                        width: context.screenWidth * .45,
                        child: Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 43,
                                  height: 43,
                                  decoration: BoxDecoration(
                                    color: HexColor('#D0E9F8'),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Image.asset("assets/stats.png"),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Report",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('#004343'),
                                      ),
                                    ),
                                    SpaceY(5),
                                    Text(
                                      "See all your report",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: HexColor('#2D5151'),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SpaceX(10),
                      Container(
                        height: 175,
                        width: context.screenWidth * .45,
                        child: Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 43,
                                  height: 43,
                                  decoration: BoxDecoration(
                                    color: HexColor('#EFEEFF'),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Image.asset("assets/user.png"),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Profile",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('#004343'),
                                      ),
                                    ),
                                    SpaceY(5),
                                    Text(
                                      "Saad Ibn Sayeed",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: HexColor('#2D5151'),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SpaceY(15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: context.screenWidth * .85,
                      height: 53,
                      decoration: BoxDecoration(
                        color: HexColor('#77E6B6'),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "CREATE TICKET",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: HexColor('#004343'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
