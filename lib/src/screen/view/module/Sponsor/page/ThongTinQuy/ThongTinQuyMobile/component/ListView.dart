import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/api/SponsorSheetAPI/body.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/component/indexpage/component/ListCaNhan/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/component/indexpage/component/ListDoanhNghiep/body.dart';
import 'package:flutter_request_ver2/src/utils/dialog.dart';
import 'package:provider/provider.dart';

class ListBuilderViewThongTinQuy extends StatefulWidget {
  const ListBuilderViewThongTinQuy({Key key}) : super(key: key);

  @override
  _ListBuilderViewThongTinQuyState createState() =>
      _ListBuilderViewThongTinQuyState();
}

class _ListBuilderViewThongTinQuyState
    extends State<ListBuilderViewThongTinQuy> {
  SponsorController _controller;
  @override
  Widget build(BuildContext context) {
    _controller = SponsorController(context: context);
    return Consumer<SponsorModel>(
      builder: (context, value, child) {
        dynamic list = value.listQuy;
        return ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            if (value.initPageQuy == 0) {
              return GestureDetector(
                onTap: () {
                  print(list[index]);
                  if (value.loginCaNhan == null) return;
                  (value.loginCaNhan.phoneNumber != list[index].phoneNumber)
                      ? Diaglog.showDiaglogItem(context)
                      : _controller.addCaNhanIndex(list[index]).then((value) =>
                          SponsorSheetAPI.init('ChiTiet').then((value) =>
                              SponsorSheetAPI.getAllChiTiet().then((value) =>
                                  _controller.saveAllChiTietCaNhan(value).then(
                                      (value) =>
                                          _controller.changeInitPageHome(4)))));
                },
                child: ListCaNhan(
                  stt: index + 1,
                  name: list[index].name,
                  phoneNumber: list[index].phoneNumber,
                  money: list[index].money,
                ),
              );
            } else {
              return GestureDetector(
                onTap: () {
                  print(list[index]);
                  if (value.loginDoanhNghiep == null) return;
                  (value.loginDoanhNghiep.phoneNumber !=
                          list[index].phoneNumber)
                      ? Diaglog.showDiaglogItem(context)
                      : _controller.addDoanhNghiepIndex(list[index]).then(
                          (value) => SponsorSheetAPI.init('ChiTiet').then(
                              (value) => SponsorSheetAPI.getAllChiTiet().then(
                                  (value) => _controller
                                      .saveAllChiTietDoanhNghiep(value)
                                      .then((value) =>
                                          _controller.changeInitPageHome(5)))));
                },
                child: ListDoanhNghiep(
                  stt: index + 1,
                  name: list[index].name,
                  phoneNumber: list[index].phoneNumber,
                  money: list[index].money,
                ),
              );
            }
          },
        );
      },
    );
  }
}
