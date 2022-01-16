import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/dialog.dart';
import 'package:provider/provider.dart';
import 'package:link/link.dart';

class SponsorScaffoldDesktop extends StatefulWidget {
  final Widget child;
  SponsorScaffoldDesktop({this.child});

  @override
  _SponsorScaffoldDesktopState createState() => _SponsorScaffoldDesktopState();
}

class _SponsorScaffoldDesktopState extends State<SponsorScaffoldDesktop> {
  SponsorController sponsorController = SponsorController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    sponsorController = SponsorController(context: context);
    return Scaffold(
      appBar: size.width > 600
          ? PreferredSize(
              preferredSize: Size(size.width, 70),
              child: Container(
                color: colorAppBarSponsor,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'SPONSOR',
                      style: TextStyle(
                          color: colorBodySponsor,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    MenuItems(
                      title: "Trang chủ",
                      press: () {
                        setState(() {});
                        sponsorController.changeInitPageHome(0);
                      },
                    ),
                    MenuItems(
                      title: "Danh sách",
                      press: () {
                        sponsorController.changeInitPageHome(1);
                        sponsorController.changInitListDoanhNghiepVaCaNhan(0);
                      },
                    ),
                    MenuItems(
                      title: "Bài Viết",
                      press: () {
                        sponsorController.changeInitPageHome(2);
                      },
                    ),
                    InkWell(
                      onTap: () {},
                      child: Link(
                        url: 'http://192.168.31.86:5000/signup',
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Đăng ký',
                            style: TextStyle(
                                color: colorBodySponsor, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Link(
                        url: 'http://192.168.31.86:5000/transfer',
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Thụ hưởng',
                            style: TextStyle(
                                color: colorBodySponsor, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    MenuItems(
                      title: "Lịch sử",
                      press: () {
                        sponsorController.changeInitPageHome(5);
                      },
                    ),
                    Container(
                      //color: Colors.amber,
                      height: 50,
                      child: Consumer<SponsorModel>(
                        builder: (context, value, child) {
                          if (value.loginCaNhan != null) {
                            return GestureDetector(
                              onTap: () {
                                DiagLogOut.showDiaglogItemLogout(
                                  context,
                                  () {
                                    Provider.of<SponsorModel>(context,
                                            listen: false)
                                        .exitLogin();
                                  },
                                );
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${value.loginCaNhan.name}',
                                    style: TextStyle(
                                      color: colorTextSponsor,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '${value.loginCaNhan.money}đ',
                                    style: TextStyle(
                                      color: colorTextSponsor,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          } else if (value.loginDoanhNghiep != null) {
                            return GestureDetector(
                              onTap: () {
                                DiagLogOut.showDiaglogItemLogout(
                                  context,
                                  () {
                                    Provider.of<SponsorModel>(context,
                                            listen: false)
                                        .exitLogin();
                                  },
                                );
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${value.loginDoanhNghiep.name}',
                                    style: TextStyle(
                                      color: colorTextSponsor,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '${value.loginDoanhNghiep.money}đ',
                                    style: TextStyle(
                                      color: colorTextSponsor,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return InkWell(
                              onTap: () {
                                sponsorController.checkLoginPhoneCaNhan();
                              },
                              child: Center(
                                  child: Text('Đăng nhập',
                                      style: TextStyle(
                                          color: colorBodySponsor,
                                          fontSize: 16))),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          : AppBar(
              backgroundColor: colorAppBarSponsor,
              title: Text(
                'SPONSOR',
                style: TextStyle(
                    color: colorBodySponsor, fontWeight: FontWeight.w700),
              ),
            ),
      drawer: size.width > 600
          ? null
          : Drawer(
              child: Column(
              children: [
                MenuItems(
                  title: "Trang chủ",
                  press: () {
                    setState(() {});
                    sponsorController.changeInitPageHome(0);
                  },
                ),
                MenuItems(
                  title: "Danh sách",
                  press: () {
                    sponsorController.changeInitPageHome(1);
                    sponsorController.changInitListDoanhNghiepVaCaNhan(0);
                  },
                ),
                MenuItems(
                  title: "Bài Viết",
                  press: () {
                    sponsorController.changeInitPageHome(2);
                  },
                ),
              ],
            )),
      body: Container(
        child: widget.child,
        height: size.height,
        width: size.width,
        color: colorBodySponsor,
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  final String title;
  final Function press;
  bool isText;
  MenuItems({
    Key key,
    this.press,
    this.title,
    this.isText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(color: colorBodySponsor, fontSize: 16),
        ),
      ),
    );
  }
}
