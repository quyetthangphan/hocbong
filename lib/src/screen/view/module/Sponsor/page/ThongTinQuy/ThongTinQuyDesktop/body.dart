import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/component/indexpage/component/TextFieldSearch/SearchMobile/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/ThongTinQuy/ThongTinQuyDesktop/conponent/hoverAnimated.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/ThongTinQuy/ThongTinQuyDesktop/conponent/listview.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class ThongTinQuyDeskTop extends StatefulWidget {
  const ThongTinQuyDeskTop({Key key}) : super(key: key);

  @override
  _ThongTinQuyDeskTopState createState() => _ThongTinQuyDeskTopState();
}

class _ThongTinQuyDeskTopState extends State<ThongTinQuyDeskTop> {
  SponsorController sponsorController;
  Color borderColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    sponsorController = SponsorController(context: context);
    return Container(
      child: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(color: colorBodySponsor),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Color.fromRGBO(41, 128, 185, 1),
                      Color.fromRGBO(255, 255, 255, 1),
                    ])),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              height: size.height * 0.8,
              width: size.width * 0.8,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 1,
                    color: Color.fromRGBO(255, 255, 255, 0.1)),
                BoxShadow(
                    offset: Offset(0, 50),
                    blurRadius: 100,
                    spreadRadius: -20,
                    color: Color.fromRGBO(50, 50, 93, 0.25)),
                BoxShadow(
                    offset: Offset(0, 30),
                    blurRadius: 60,
                    spreadRadius: -30,
                    color: Color.fromRGBO(0, 0, 0, 0.3))
              ]),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                          color: colorBodySponsor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(
                            child: Text("Vinh doanh đóng góp".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: colorAppBarSponsor)),
                          ),
                          SizedBox(height: 30),
                          FittedBox(
                            child: Text(
                              "Tổng hợp thông tin đã ủng hộ quỹ.",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: colorAppBarSponsor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 70),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(41, 128, 185, 1),
                          Color.fromRGBO(255, 255, 255, 1),
                        ]),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              buildHoverAnimatedButton(
                                press: () {
                                  sponsorController.changeInitPageHome(1);
                                  sponsorController
                                      .changInitListDoanhNghiepVaCaNhan(0);
                                },
                                size: size,
                                text: "Cá nhân",
                              ),
                              SizedBox(width: 20),
                              buildHoverAnimatedButton(
                                  press: () {
                                    sponsorController.changeInitPageHome(1);
                                    sponsorController
                                        .changInitListDoanhNghiepVaCaNhan(1);
                                  },
                                  size: size,
                                  text: "Doanh nghiệp")
                            ],
                          ),
                          SizedBox(height: 20),
                          TextFieldSearch(
                            search: (value) {
                              sponsorController.changInitTextFieldSearch(value);
                            },
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: size.height * 0.5,
                            width: size.width * 0.8,
                            //color: Colors.blue,
                            child: ListBuildViewThongTinQuyDesktop(),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class buildHoverAnimatedButton extends StatelessWidget {
  final String text;
  final Function press;
  const buildHoverAnimatedButton({
    Key key,
    this.text,
    this.press,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: HoverAnimated(
        height: size.height * 0.05,
        width: size.width * 0.11,
        thinkness: 2.5,
        millisecons: 500,
        curve: Curves.easeInSine,
        child: Center(
            child: FittedBox(
          child: Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        )),
      ),
    );
  }
}
