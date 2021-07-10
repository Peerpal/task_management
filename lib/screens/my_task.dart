import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:velocity_x/velocity_x.dart';

import '../spacer.dart';

class MyTask extends StatelessWidget {
  const MyTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: HexColor("004343"),
        title: const Text("My Task"),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: context.screenWidth,
            height: 100,
            decoration: BoxDecoration(
              color: HexColor("004343"),
            ),
          ),
          Positioned(
            right: 50,
            child: Container(
              width: context.screenWidth * .75,
              height: 32,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: ['All', 'Pending', 'Ongoing', 'Completed']
                    .asMap()
                    .entries
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          padding: e.key == 0
                              ? const EdgeInsets.symmetric(horizontal: 15)
                              : null,
                          decoration: e.key == 0
                              ? BoxDecoration(
                                  color: HexColor('#356E6E'),
                                  borderRadius: BorderRadius.circular(5),
                                )
                              : null,
                          child: Center(
                            child: Text(
                              e.value,
                              style: TextStyle(
                                fontSize: e.key == 0 ? 15 : 14,
                                color: Colors.white,
                                fontWeight: e.key == 0 ? FontWeight.bold : null,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Positioned(
            top: 80,
            child: Container(
              width: context.screenWidth,
              height: context.screenHeight * .9,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              decoration: BoxDecoration(
                color: HexColor('#EFEFEF'),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "All Task",
                    style: TextStyle(
                      color: HexColor('#004343'),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SpaceY(15),
                  Container(
                    width: context.screenWidth,
                    height: 182,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: context.screenWidth,
                          height: 172,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 25,
                                  right: 15,
                                  top: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset("assets/tools.png"),
                                            SpaceX(5),
                                            Text(
                                              'SER13312',
                                              style: TextStyle(
                                                color: HexColor('#2D5151'),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SpaceY(5),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.access_time_outlined,
                                              size: 15,
                                            ),
                                            SpaceX(5),
                                            Text(
                                              'Tomorrow – 12:45 pm',
                                              style: TextStyle(
                                                color: HexColor('#2D5151'),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image.asset("assets/Progresss.png")
                                  ],
                                ),
                              ),
                              // SpaceY(5),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  'Replacement mouse required',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor('#004343'),
                                  ),
                                ),
                              ),
                              SpaceY(5),
                              Divider(
                                // height: 25,
                                color: HexColor('#EBEBEB'),
                              ),
                              // SpaceY(10),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 25,
                                  right: 15,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                "assets/user1.png",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SpaceX(10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Saad Ibn Sayeed',
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                color: HexColor('#004343'),
                                              ),
                                            ),
                                            SpaceY(2),
                                            Text(
                                              'Marketing Department',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: HexColor('#2D5151'),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: 97,
                                      height: 27,
                                      decoration: BoxDecoration(
                                        color: HexColor('#F2ECFB'),
                                        border: Border.all(
                                          color: HexColor('#A880E3'),
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "IN PROGRESS",
                                          style: TextStyle(
                                            color: HexColor('#A880E3'),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 35,
                          child: Container(
                            height: 100,
                            width: 8,
                            decoration: BoxDecoration(
                              color: HexColor('#2DCED6'),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SpaceY(10),
                  Container(
                    width: context.screenWidth,
                    height: 182,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: context.screenWidth,
                          height: 172,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 25,
                                  right: 15,
                                  top: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset("assets/tools.png"),
                                            SpaceX(5),
                                            Text(
                                              'SER13312',
                                              style: TextStyle(
                                                color: HexColor('#2D5151'),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SpaceY(5),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.access_time_outlined,
                                              size: 15,
                                            ),
                                            SpaceX(5),
                                            Text(
                                              'Tomorrow – 12:45 pm',
                                              style: TextStyle(
                                                color: HexColor('#2D5151'),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image.asset("assets/Progresss.png")
                                  ],
                                ),
                              ),
                              // SpaceY(5),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  'Replacement mouse required',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor('#004343'),
                                  ),
                                ),
                              ),
                              SpaceY(5),
                              Divider(
                                // height: 25,
                                color: HexColor('#EBEBEB'),
                              ),
                              // SpaceY(10),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 25,
                                  right: 15,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                "assets/user2.png",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SpaceX(10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Jonathan Eve',
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                color: HexColor('#004343'),
                                              ),
                                            ),
                                            SpaceY(2),
                                            Text(
                                              'HR Department',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: HexColor('#2D5151'),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: 97,
                                      height: 27,
                                      decoration: BoxDecoration(
                                        color: HexColor('#DFF3E7'),
                                        border: Border.all(
                                          color: HexColor('#27AE60'),
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "COMPLETED",
                                          style: TextStyle(
                                            color: HexColor('#27AE60'),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 35,
                          child: Container(
                            height: 100,
                            width: 8,
                            decoration: BoxDecoration(
                              color: HexColor('#6C5DD3'),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SpaceY(10),
                  Container(
                    width: context.screenWidth,
                    height: 182,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: context.screenWidth,
                          height: 172,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 25,
                                  right: 15,
                                  top: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset("assets/tools.png"),
                                            SpaceX(5),
                                            Text(
                                              'SER13312',
                                              style: TextStyle(
                                                color: HexColor('#2D5151'),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SpaceY(5),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.access_time_outlined,
                                              size: 15,
                                            ),
                                            SpaceX(5),
                                            Text(
                                              'Tomorrow – 12:45 pm',
                                              style: TextStyle(
                                                color: HexColor('#2D5151'),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image.asset("assets/Progresss.png")
                                  ],
                                ),
                              ),
                              // SpaceY(5),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  'Replacement mouse required',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor('#004343'),
                                  ),
                                ),
                              ),
                              SpaceY(5),
                              Divider(
                                // height: 25,
                                color: HexColor('#EBEBEB'),
                              ),
                              // SpaceY(10),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 25,
                                  right: 15,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                "assets/user2.png",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SpaceX(10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Marques Browney',
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                color: HexColor('#004343'),
                                              ),
                                            ),
                                            SpaceY(2),
                                            Text(
                                              'FINANCE Department',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: HexColor('#2D5151'),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: 97,
                                      height: 27,
                                      decoration: BoxDecoration(
                                        color: HexColor('#FCE6E6'),
                                        border: Border.all(
                                          color: HexColor('#EB5757'),
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "PENDING",
                                          style: TextStyle(
                                            color: HexColor('#EB5757'),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 35,
                          child: Container(
                            height: 100,
                            width: 8,
                            decoration: BoxDecoration(
                              color: HexColor('#F2994A'),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
