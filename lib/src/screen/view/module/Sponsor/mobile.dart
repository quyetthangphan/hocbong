import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/component/ScaffoldMobile/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/CauChuyen/body.dart';
import 'package:flutter_request_ver2/src/utils/config.dart';
import 'package:provider/provider.dart';

class SponsorPageMobile extends StatelessWidget {
  const SponsorPageMobile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SponsorScaffoldMobile(child: Consumer<SponsorModel>(
      builder: (context, value, child) {
        return Config.configPageSponsor[value.initSponsor];
      },
    ));
  }
}
