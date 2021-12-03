import 'package:flutter/material.dart';

import 'package:flutter_request_ver2/src/model/Sponsor/OTD/CaNhanOTD.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/OTD/ChiTietOTD.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/OTD/DoanhNghiepOTD.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/OTD/SumSponsorOTD.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';

import 'package:provider/provider.dart';

class SponsorController {
  SponsorController({this.context});
  final BuildContext context;

// HomeScreen
  void changeInitPageHome(int i) {
    Provider.of<SponsorModel>(context, listen: false).changeInitSponsor(i);
  }

// Khi Login không cho Login lại nữa
  void chanInitScreen(int i) {
    Provider.of<SponsorModel>(context, listen: false).changeInitSceen(i);
  }

// onPressed ListCaNhan và ListCuaHang
  void onPressedList(int i) {
    Provider.of<SponsorModel>(context, listen: false).changeInitPageQuy(i);
  }

  void changInitListDoanhNghiepVaCaNhan(int i) {
    Provider.of<SponsorModel>(context, listen: false).changeInitPageQuy(i);
  }

// ListCaNhan và ListCuaHang
  void changInitTextFieldSearch(String value) {
    Provider.of<SponsorModel>(context, listen: false).changeListQuy(value);
  }

  Future addCaNhanIndex(dynamic data) async {
    Provider.of<SponsorModel>(context, listen: false).addCaNhanIndex(data);
  }

  Future addDoanhNghiepIndex(dynamic data) async {
    Provider.of<SponsorModel>(context, listen: false).addDoanhNghiepIndex(data);
  }

  Future saveAllChiTietCaNhan(dynamic json) async {
    List<ChiTietOTD> data = json != null
        ? (json as List).map((e) => ChiTietOTD.fromJson(e)).toList()
        : [];

    CaNhanOTD indexCaNhan =
        Provider.of<SponsorModel>(context, listen: false).indexCaNhan;

    List<ChiTietOTD> dataSaveCaNhan = [];

    data.forEach((element) {
      if (element.role == 'Cá nhân') {
        if (element.phoneTaiTro == indexCaNhan.phoneNumber) {
          dataSaveCaNhan.add(element);
        }
      }
    });
    Provider.of<SponsorModel>(context, listen: false)
        .initDataChiTiet(dataSaveCaNhan);
  }

  Future saveAllChiTietDoanhNghiep(dynamic json) async {
    List<ChiTietOTD> data = json != null
        ? (json as List).map((e) => ChiTietOTD.fromJson(e)).toList()
        : [];

    DoanhNghiepOTD indexDoanhNghiep =
        Provider.of<SponsorModel>(context, listen: false).indexDoanhNghiep;

    List<ChiTietOTD> dataSaveDoanhNghiep = [];

    data.forEach((element) {
      if (element.role == 'Doanh nghiệp') {
        if (element.phoneTaiTro == indexDoanhNghiep.phoneNumber) {
          dataSaveDoanhNghiep.add(element);
        }
      }
    });
    Provider.of<SponsorModel>(context, listen: false)
        .initDataChiTiet(dataSaveDoanhNghiep);
  }

  // ignore: missing_return
  Future<List<CaNhanOTD>> getAllDataCaNhanSumSonsor(
      List<SumSponsorOTD> dataSumSponsor) async {
    List<CaNhanOTD> dataCaNhan = [];
    dataSumSponsor.forEach((element) {
      if (element.role != 'Cá nhân') return;
      CaNhanOTD data = CaNhanOTD();
      data.name = element.fullName;
      data.money = element.sumMoney;
      data.phoneNumber = element.phone;
      dataCaNhan.add(data);
    });
    return dataCaNhan;
  }

  Future<List<DoanhNghiepOTD>> getAllDataDoanhNghiepSumSonsor(
      List<SumSponsorOTD> dataSumSponsor) async {
    List<DoanhNghiepOTD> dataDoanhNghiep = [];
    dataSumSponsor.forEach((element) {
      if (element.role != 'Doanh nghiệp') return;
      DoanhNghiepOTD data = DoanhNghiepOTD();
      data.name = element.fullName;
      data.money = element.sumMoney;
      data.phoneNumber = element.phone;
      dataDoanhNghiep.add(data);
    });
    return dataDoanhNghiep;
  }

  Future<List<SumSponsorOTD>> saveAllDataSponsor(dynamic json) async {
    List<SumSponsorOTD> list = [];
    (json as List).removeAt(0);
    (json as List).forEach((element) {
      SumSponsorOTD data = SumSponsorOTD();
      data.role = element[0];
      data.fullName = element[1];
      data.phone = element[2];
      data.sumMoney = element[3];
      list.add(data);
    });
    return list;
  }

  // Check PhoneNumBer Cá Nhân
  void changInitLoginPageCaNhan(String value) {
    List<CaNhanOTD> listCaNhan =
        Provider.of<SponsorModel>(context, listen: false).listCaNhan;
    CaNhanOTD dataCaNhan = listCaNhan.firstWhere(
        (element) => element.phoneNumber == value,
        orElse: () => null);
    if (dataCaNhan != null) {
      Provider.of<SponsorModel>(context, listen: false)
          .loginPhoneCaNhan(dataCaNhan);
      Provider.of<SponsorModel>(context, listen: false).changeInitSceen(0);
    }
    // Check PhoneNumber DoanhNghiep

    List<DoanhNghiepOTD> listDoanhNghiep =
        Provider.of<SponsorModel>(context, listen: false).listDoanhNghiep;
    DoanhNghiepOTD dataDoanhNghiep = listDoanhNghiep.firstWhere(
        (element) => element.phoneNumber == value,
        orElse: () => null);
    if (dataDoanhNghiep != null) {
      Provider.of<SponsorModel>(context, listen: false)
          .loginPhoneDoanhNghiep(dataDoanhNghiep);
      Provider.of<SponsorModel>(context, listen: false).changeInitSceen(0);
    }
  }

  // Check Login Phone Cá Nhân
  void checkLoginPhoneCaNhan() {
    String phoneCaNhan =
        Provider.of<SponsorModel>(context, listen: false).loginCaNhan == null
            ? ''
            : Provider.of<SponsorModel>(context, listen: false)
                .loginCaNhan
                .phoneNumber;
    print(phoneCaNhan + 'phone ca nhan');
    if (phoneCaNhan == '') {
      chanInitScreen(1);
      return;
    }

    String phoneDoanhNghiep =
        Provider.of<SponsorModel>(context, listen: false).loginDoanhNghiep ==
                null
            ? ''
            : Provider.of<SponsorModel>(context, listen: false)
                .loginDoanhNghiep
                .phoneNumber;
    print(phoneDoanhNghiep + 'phone danh nghiep');
    if (phoneDoanhNghiep == '') {
      chanInitScreen(1);
      return;
    }
  }

  void changeInitBuildMenuItem(int value) {
    Provider.of<SponsorModel>(context, listen: false)
        .selectedItem(context, value);
  }
}

// ListBuilder SumValue Money
String funcSumValue(List<SumSponsorOTD> listSumValue) {
  int arr = 0;
  for (var i = 0; i < listSumValue.length; i++) {
    String phanTu = listSumValue[i].sumMoney;
    int value = funcRemove(phanTu);
    arr += value;
  }
  String reStr = writedPrice(arr);
  return reStr;
}

// ignore: missing_return
String writedPrice(int price) {
  if ('$price'.length > 2) {
    var value = '$price';
    value = value.replaceAll(RegExp(r'\D'), '');
    value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), '.');
    return value;
  }
}

int funcRemove(String phanTu) {
  List<String> lStr = phanTu.split('.');
  String str = '';
  lStr.forEach((element) {
    str += element;
  });
  int remove = int.parse(str);
  return remove;
}

// ignore: missing_return
String writedMoneyCaNhanAndDoanhNghiep(String price) {
  if ('$price'.length > 2) {
    var value = '$price';
    value = value.replaceAll(RegExp(r'\D'), '');
    value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), '.');
    return value;
  }
}
