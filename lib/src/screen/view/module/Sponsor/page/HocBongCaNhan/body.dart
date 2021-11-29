import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/component/indexpage/component/ListChiTiet/body.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:provider/provider.dart';

class SponsorListHocBongCaNhan extends StatefulWidget {
  @override
  _SponsorListHocBongCaNhanState createState() =>
      _SponsorListHocBongCaNhanState();
}

class _SponsorListHocBongCaNhanState extends State<SponsorListHocBongCaNhan> {
  SponsorController sponsorController;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    sponsorController = SponsorController(context: context);
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          width: size.width,
          color: colorBodySponsor,
          child: Stack(
            children: [
              Positioned(
                top: 175,
                child: Container(
                  width: size.width,
                  height: 550,
                  padding: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    color: colorBodySponsor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0),
                        offset: Offset(0, 0),
                        blurRadius: 5,
                      ),
                      BoxShadow(
                        color: colorAppBarSponsor.withOpacity(1),
                        offset: Offset(0, 0),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Consumer<SponsorModel>(
                    builder: (context, value, child) {
                      return value.listChiTiet != null
                          ? ListView.builder(
                              itemCount: value.listChiTiet.length,
                              itemBuilder: (context, index) {
                                return ListChiTiet(
                                  stt: index + 1,
                                  name: value.listChiTiet[index].name,
                                  phoneHocVien:
                                      value.listChiTiet[index].phoneHocVien,
                                  moneyRe: value.listChiTiet[index].moneyRe,
                                );
                              },
                            )
                          : Center(
                              child: Text(
                                'Hiện Tại Chưa Có Người Nhận',
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                    },
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: size.width,
                      height: 150,
                      decoration: BoxDecoration(
                        color: colorAppBarSponsor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  left: 20,
                  right: 20,
                  top: 50,
                  child: Container(
                      height: size.height * 0.05,
                      width: size.width,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Danh Sách Nhận Quỹ",
                                style: TextStyle(
                                  fontSize: size.height * 0.03,
                                  color: colorBodySponsor,
                                  fontWeight: FontWeight.w700,
                                )),
                            const SizedBox(width: 20),
                            Icon(Icons.museum,
                                size: 40, color: colorBodySponsor),
                          ],
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
