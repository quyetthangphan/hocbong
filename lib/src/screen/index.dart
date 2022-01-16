import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/utils/config.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Index extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return Consumer<SponsorModel>(
                  builder: (context, value, child) {
                    return Config.configSponsorLoginDesktop[value.initSceen];
                  },
                );
              } else
                return Consumer<SponsorModel>(
                  builder: (context, value, child) {
                    return Config.configSponsorLogin[value.initSceen];
                  },
                );
            },
          )
        : Consumer<SponsorModel>(
            builder: (context, value, child) {
              return Config.configSponsorLogin[value.initSceen];
            },
          );
  }
}
