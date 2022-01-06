import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/api/SponsorSheetAPI/body.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/screen/index.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/LodingPage/body.dart';
import 'package:provider/provider.dart';

class Sponsor extends StatefulWidget {
  const Sponsor({Key key}) : super(key: key);

  @override
  _SponsorState createState() => _SponsorState();
}

class _SponsorState extends State<Sponsor> {
  bool isLoading = false;
  SponsorController _controller = SponsorController();
  // @override
  // void initState() {
  //   super.initState();
  //   SponsorSheetAPI.init('sumSponsor').then((value) => {
  //         print('Loding data'),
  //         SponsorSheetAPI.getAllSumSponsorData().then(
  //             (value) => _controller.saveAllDataSponsor(value).then((value) => {
  //                   Provider.of<SponsorModel>(context, listen: false)
  //                       .initDataSumSponsor(value),
  //                   _controller.getAllDataCaNhanSumSonsor(value).then((value) =>
  //                       Provider.of<SponsorModel>(context, listen: false)
  //                           .initDataCaNhan(value)),
  //                   _controller
  //                       .getAllDataDoanhNghiepSumSonsor(value)
  //                       .then((value) =>
  //                           Provider.of<SponsorModel>(context, listen: false)
  //                               .initDataDoanhNghiep(value))
  //                       .then((value) => setLoading())
  //                 }))
  //       });
  // }

  // void setLoading() {
  //   setState(() {
  //     isLoading = true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // return isLoading ? Index() : LoadingPage();
    return Index();
  }
}
