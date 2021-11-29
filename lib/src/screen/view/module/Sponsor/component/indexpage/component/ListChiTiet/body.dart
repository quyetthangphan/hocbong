import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class ListChiTiet extends StatelessWidget {
  final String name, phoneHocVien, moneyRe;
  final int stt;
  const ListChiTiet({
    Key key,
    this.name,
    this.stt,
    this.moneyRe,
    this.phoneHocVien,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: colorAppBarSponsor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "$stt",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: colorBodySponsor),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "$name",
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: colorAppBarSponsor),
                      ),
                      Text(
                        "$phoneHocVien",
                        style:
                            TextStyle(color: colorAppBarSponsor, fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "${moneyRe}đ",
                    style: TextStyle(
                        fontSize: size.height * 0.015,
                        fontWeight: FontWeight.w700,
                        color: colorAppBarSponsor),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
