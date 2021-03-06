import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/component/ScaffoldDesktop/body.dart';
import 'package:flutter_request_ver2/src/utils/config.dart';
import 'package:provider/provider.dart';

import 'page/Login/LoginDesktop/body.dart';
import 'page/dangky/body.dart';
import 'page/transaction/body.dart';

class SponsorPageDesktop extends StatelessWidget {
  const SponsorPageDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SponsorScaffoldDesktop(
      child: Consumer<SponsorModel>(
        builder: (context, value, child) {
          return Config.configPageSponsorDesktop[value.initSponsor];
          //return Transaction();
          //return DangKy();
          //return SponsorLoginDesktop();
        },
      ),
    );
  }
}
