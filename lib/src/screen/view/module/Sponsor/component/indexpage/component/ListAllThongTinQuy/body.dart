import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class ListAllThongTinCaNhanAndDoanhNghiep extends StatefulWidget {
  final String name, phoneNumber, money;
  final int stt;
  ListAllThongTinCaNhanAndDoanhNghiep(
      {Key key, this.name, this.phoneNumber, this.money, this.stt})
      : super(key: key);

  @override
  _ListAllThongTinCaNhanAndDoanhNghiepState createState() =>
      _ListAllThongTinCaNhanAndDoanhNghiepState();
}

class _ListAllThongTinCaNhanAndDoanhNghiepState
    extends State<ListAllThongTinCaNhanAndDoanhNghiep> {
  dynamic funcHiddenPhone(String newphone) {
    for (int j = 0; j < widget.phoneNumber.length; j++) {
      newphone = widget.phoneNumber.replaceRange(3, 7, 'xxxx');
    }
    return newphone;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width * 0.2,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: colorBodySponsor,
          borderRadius: BorderRadius.all(Radius.circular(14)),
          boxShadow: [
            BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 15,
              color: Colors.blue.withOpacity(0.2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: colorBodySponsor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.5),
                      offset: Offset(0, 0),
                      blurRadius: 2,
                    ),
                    BoxShadow(
                      color: colorAppBarSponsor.withOpacity(0.5),
                      offset: Offset(0, 0),
                      blurRadius: 2,
                    ),
                  ],
                ),
                height: size.height * 0.05,
                width: size.width * 0.12,
                child: Center(
                    child: FittedBox(
                  child: Text(
                    '${writedMoneyCaNhanAndDoanhNghiep(widget.money)}đ',
                    style: TextStyle(
                        color: colorAppBarSponsor,
                        fontSize: size.height * 0.03,
                        fontWeight: FontWeight.w700),
                  ),
                )),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('${widget.name}'),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      funcHiddenPhone('${widget.phoneNumber}'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
