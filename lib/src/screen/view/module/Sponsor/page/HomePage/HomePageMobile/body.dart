import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/icons.dart';
import 'package:provider/provider.dart';

class SponsorHomePage extends StatefulWidget {
  const SponsorHomePage({Key key}) : super(key: key);

  @override
  _HomePageSponsorState createState() => _HomePageSponsorState();
}

class _HomePageSponsorState extends State<SponsorHomePage> {
  SponsorController sponsorController;

  @override
  Widget build(BuildContext context) {
    sponsorController = SponsorController(context: context);
    Size size = MediaQuery.of(context).size;
    Color colorBackgroundLiner = Color.fromRGBO(0, 180, 219, 1);
    Color colorBackgroundMain = Color(0xFF1565C0);
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          image(size: size),
          textTilte(size: size),
          boxShape3(
              colorBackgroundLiner: colorBackgroundLiner,
              colorBackgroundMain: colorBackgroundMain),
          containerGiaTriQuy(size: size),
          boxShape1(
              colorBackgroundLiner: colorBackgroundLiner,
              colorBackgroundMain: colorBackgroundMain),
          boxShape2(
              colorBackgroundLiner: colorBackgroundLiner,
              colorBackgroundMain: colorBackgroundMain),
        ],
      ),
    );
  }
}

class image extends StatelessWidget {
  const image({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: Container(
      height: size.height * 0.45,
      width: size.width,
      child: Image.asset(homeImageMobile),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
    ));
  }
}

class textTilte extends StatelessWidget {
  const textTilte({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 0,
      left: 0,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text("Quỹ Tiếp Cánh Ước Mơ",
            style: TextStyle(
              fontSize: 30,
              color: colorAppBarSponsor,
              fontWeight: FontWeight.w700,
            )),
      ),
    );
  }
}

class boxShape3 extends StatelessWidget {
  const boxShape3({
    Key key,
    @required this.colorBackgroundLiner,
    @required this.colorBackgroundMain,
  }) : super(key: key);

  final Color colorBackgroundLiner;
  final Color colorBackgroundMain;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: -5,
        bottom: 200,
        child: Container(
          height: 10,
          width: 180,
          decoration: BoxDecoration(
            gradient: RadialGradient(
                radius: 12,
                colors: [colorBackgroundLiner, colorBackgroundMain]),
            color: colorBackgroundMain,
            shape: BoxShape.rectangle,
          ),
        ));
  }
}

class boxShape2 extends StatelessWidget {
  const boxShape2({
    Key key,
    @required this.colorBackgroundLiner,
    @required this.colorBackgroundMain,
  }) : super(key: key);

  final Color colorBackgroundLiner;
  final Color colorBackgroundMain;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 130,
        bottom: 120,
        child: Container(
          height: 10,
          width: 180,
          decoration: BoxDecoration(
            gradient: RadialGradient(
                radius: 12,
                colors: [colorBackgroundLiner, colorBackgroundMain]),
            shape: BoxShape.rectangle,
          ),
        ));
  }
}

class boxShape1 extends StatelessWidget {
  const boxShape1({
    Key key,
    @required this.colorBackgroundLiner,
    @required this.colorBackgroundMain,
  }) : super(key: key);

  final Color colorBackgroundLiner;
  final Color colorBackgroundMain;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: -5,
        bottom: 40,
        child: Container(
          height: 10,
          width: 150,
          decoration: BoxDecoration(
            gradient: RadialGradient(
                radius: 10,
                colors: [colorBackgroundLiner, colorBackgroundMain]),
            shape: BoxShape.rectangle,
          ),
        ));
  }
}

class containerGiaTriQuy extends StatelessWidget {
  const containerGiaTriQuy({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * 0.37,
      left: 30,
      right: 30,
      child: Container(
        height: 100,
        width: size.width * 0.35,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: colorBodySponsor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Tổng giá trị quỹ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Consumer<SponsorModel>(builder: (context, value, child) {
              return value.listSumSponsor.length > 0
                  ? FittedBox(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              funcSumValue(value.listSumSponsor),
                              style: TextStyle(
                                fontSize: size.height * 0.05,
                                color: colorAppBarSponsor,
                                shadows: [
                                  Shadow(
                                    color: Colors.white.withOpacity(1),
                                    offset: Offset(2, 5),
                                    blurRadius: 3,
                                  ),
                                  Shadow(
                                    color: colorAppBarSponsor.withOpacity(1),
                                    offset: Offset(1, 3),
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 0, bottom: 16),
                              child: Text(
                                "VNĐ",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: colorAppBarSponsor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ]),
                    )
                  : SizedBox();
            }),
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );
  }
}
