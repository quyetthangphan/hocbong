import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/api/SponsorSheetAPI/body.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/component/indexpage/component/ListAllThongTinQuy/body.dart';
import 'package:flutter_request_ver2/src/utils/dialog.dart';
import 'package:provider/provider.dart';

class ListBuildViewThongTinQuyDesktop extends StatefulWidget {
  const ListBuildViewThongTinQuyDesktop({Key key}) : super(key: key);

  @override
  _ListBuildViewThongTinQuyDesktopState createState() =>
      _ListBuildViewThongTinQuyDesktopState();
}

class _ListBuildViewThongTinQuyDesktopState
    extends State<ListBuildViewThongTinQuyDesktop> {
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
                                          _controller.changeInitPageHome(2)))));
                },
                child: ListAllThongTinCaNhanAndDoanhNghiep(
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
                                          _controller.changeInitPageHome(3)))));
                },
                child: ListAllThongTinCaNhanAndDoanhNghiep(
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
