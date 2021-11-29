import 'package:flutter/widgets.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/destop.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/mobile.dart';
import 'package:flutter_request_ver2/src/screen/Sponsor.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/Baiviet/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/CauChuyen/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/HocBongCaNhan/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/HocBongDoanhNghiep/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/HomePage/HomePageDesktop/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/HomePage/HomePageMobile/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/Login/LoginDesktop/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/Login/LoginMobile/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/ThongTinQuy/ThongTinQuyDesktop/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/ThongTinQuy/ThongTinQuyMobile/SponsorDanhSachCaNhan.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/ThongTinQuy/ThongTinQuyMobile/SponsorDanhSachDoanhNghiep.dart';

class Config {
  static List<Widget> configModule = [Sponsor()];

  static List<Widget> configPageSponsor = [
    SponsorHomePage(),
    SponsorThongTinDanhSachCaNhan(),
    SponsorThongTinDanhSachDoanhNghiep(),
    SponsorTongQuanChiTietChuongTrinh(),
    SponsorListHocBongCaNhan(),
    SponsorListHocBongDoanhNhgiep(),
    SponsorCauChuyen(),
  ];

  static List<Widget> configSponsorLogin = [
    SponsorPageMobile(),
    SponsorLoginMobile()
  ];

  static List<Widget> configSponsorLoginDesktop = [
    SponsorPageDesktop(),
    SponsorLoginDesktop(),
  ];

  static List<Widget> configPageSponsorDesktop = [
    HomePageDesktop(),
    ThongTinQuyDeskTop(),
  ];
}
