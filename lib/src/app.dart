import 'package:flutter/material.dart';

import 'utils/config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Config.configModule[0];
  }
}
