import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/icons.dart';
import 'package:provider/provider.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({Key key}) : super(key: key);

  @override
  _HomePageDesktopState createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  SponsorController sponsorController;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    sponsorController = SponsorController(context: context);
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            //color: Colors.amber,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: size.height * 1 / 2,
                      width: size.width * 1 / 2,
                      //color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: FittedBox(
                              child: Text(
                                "Quỹ tiếp cánh ước mơ.".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  color: colorAppBarSponsor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            child: FittedBox(
                              child: Text(
                                "Chúng tôi ở đây vì có mọi người cùng chung tay.",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: colorAppBarSponsor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            child: FittedBox(
                              child: Text(
                                "Hãy cùng nhau góp sức cho những ước mơ được bay xa.",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: colorAppBarSponsor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: size.width * 0.1,
                                  decoration: BoxDecoration(
                                      color: colorAppBarSponsor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: FittedBox(
                                      child: Text(
                                        'Xem quỹ',
                                        style: TextStyle(
                                            color: colorBodySponsor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 100),
                                InkWell(
                                  onTap: () {
                                    sponsorController.changeInitPageHome(2);
                                  },
                                  child: Container(
                                    height: 50,
                                    width: size.width * 0.1,
                                    child: Center(
                                        child: FittedBox(
                                      child: Text(
                                        "Liên hệ",
                                        style: TextStyle(
                                            color: colorBodySponsor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )),
                                    decoration: BoxDecoration(
                                        color: colorAppBarSponsor,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 1 / 2,
                      width: size.width * 1 / 2,
                      //color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 12),
                        child: Container(
                          height: size.height,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border:
                                  Border.all(width: 0.25, color: Colors.grey),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 8,
                                  offset: Offset(1, 4),
                                ),
                              ]),
                          child: ListView.builder(
                            itemCount: 9,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    top: 0, left: 20, right: 20, bottom: 0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.25),
                                              ),
                                              child: Center(child: Text('Tx')),
                                            ),
                                            SizedBox(width: 5),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    width: size.width * 0.1,
                                                    child: Text(
                                                      '0x3180ff7b36941b169845d0x3180ff7b36941b169845d0x3180ff7b36941b169845d',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.blue),
                                                    ),
                                                  ),
                                                ),
                                                Text('52 sec',
                                                    style: TextStyle(
                                                        fontSize: 11)),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Form'),
                                                SizedBox(width: 5),
                                                InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    width: size.width * 0.15,
                                                    child: Text(
                                                      '0x3180ff7b36941b169845d0x3180ff7b36941b169845d0x3180ff7b36941b169845d',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.blue),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text('To'),
                                                SizedBox(width: 5),
                                                InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    width: size.width * 0.15,
                                                    child: Text(
                                                      '0x3180ff7b36941b169845d0x3180ff7b36941b169845d0x3180ff7b36941b169845d',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.blue),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          color: Colors.grey.withOpacity(0.25),
                                          child: Center(
                                            child: Text('0.065 Eth',
                                                style:
                                                    TextStyle(fontSize: 11.2)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Divider(
                                      color: Colors.grey,
                                      indent: 5,
                                      endIndent: 5,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: size.height * 1 / 2,
                      width: size.width * 1 / 2,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: size.height * 0.17,
                          width: size.width * 0.35,
                          decoration: BoxDecoration(
                            color: colorBodySponsor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(1),
                                offset: Offset(0, 0),
                                blurRadius: 10,
                              ),
                              BoxShadow(
                                color: colorAppBarSponsor.withOpacity(1),
                                offset: Offset(0, 0),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: size.height * 0.02),
                              FittedBox(
                                child: Text(
                                  "Tổng giá trị quỹ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Consumer<SponsorModel>(
                                  builder: (context, value, child) {
                                return value.listSumSponsor.length > 0
                                    ? FittedBox(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                funcSumValue(
                                                    value.listSumSponsor),
                                                style: TextStyle(
                                                  fontSize: size.height * 0.065,
                                                  color: colorAppBarSponsor,
                                                  shadows: [
                                                    Shadow(
                                                      color: Colors.white
                                                          .withOpacity(1),
                                                      offset: Offset(2, 5),
                                                      blurRadius: 3,
                                                    ),
                                                    Shadow(
                                                      color: colorAppBarSponsor
                                                          .withOpacity(1),
                                                      offset: Offset(1, 3),
                                                      blurRadius: 5,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(bottom: 20),
                                                child: FittedBox(
                                                  child: Text(
                                                    "VNĐ",
                                                    style: TextStyle(
                                                      fontSize:
                                                          size.width * 0.012,
                                                      color: colorAppBarSponsor,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ]),
                                      )
                                    : SizedBox();
                              }),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.5,
                      width: size.width * 0.5,
                      child: Image.asset(imageDesktop),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Positioned(
        //   right: 0,
        //   bottom: 50,

        // ),
      ],
    );
  }
}
