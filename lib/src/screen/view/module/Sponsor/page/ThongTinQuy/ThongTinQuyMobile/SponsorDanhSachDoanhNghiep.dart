import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/component/indexpage/component/TextFieldSearch/SearchMobile/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/ThongTinQuy/ThongTinQuyMobile/component/ListView.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class SponsorThongTinDanhSachDoanhNghiep extends StatefulWidget {
  const SponsorThongTinDanhSachDoanhNghiep({Key key}) : super(key: key);

  @override
  _SponsorThongTinDanhSachDoanhNghiepState createState() =>
      _SponsorThongTinDanhSachDoanhNghiepState();
}

class _SponsorThongTinDanhSachDoanhNghiepState
    extends State<SponsorThongTinDanhSachDoanhNghiep> {
  SponsorController sponsorController;
  @override
  Widget build(BuildContext context) {
    sponsorController = SponsorController(context: context);
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            top: 200,
            right: 20,
            left: 20,
            child: Container(
              width: size.width * 0.9,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                color: colorBodySponsor,
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
              child: ListBuilderViewThongTinQuy(),
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
              left: 10,
              right: 10,
              top: 40,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text("Danh Sách Doanh Nghiệp",
                      style: TextStyle(
                        fontSize: 22,
                        color: colorBodySponsor,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              )),
          Positioned(
            left: 35,
            right: 35,
            top: 130,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: colorBodySponsor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
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
              child: TextFieldSearch(
                search: (value) {
                  sponsorController.changInitTextFieldSearch(value);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
