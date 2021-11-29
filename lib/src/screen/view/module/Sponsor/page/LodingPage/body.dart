import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.school,
              size: 150,
              color: colorAppBarSponsor,
            ),
            SizedBox(height: 30),
            CupertinoActivityIndicator(
              radius: 25,
            ),
          ],
        ),
      ),
    );
  }
}
