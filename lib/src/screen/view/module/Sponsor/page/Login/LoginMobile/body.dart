import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class SponsorLoginMobile extends StatefulWidget {
  @override
  _SponsorLoginState createState() => _SponsorLoginState();
}

class _SponsorLoginState extends State<SponsorLoginMobile> {
  SponsorController sponsorController;
  @override
  Widget build(BuildContext context) {
    sponsorController = SponsorController(context: context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: colorAppBarSponsor,
        alignment: Alignment.center,
        child: Container(
          height: size.width * 0.9,
          width: size.width * 0.9,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: // BoxShape.circle == Hình tròn.
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Đăng nhập',
                style: TextStyle(
                    fontSize: 30,
                    color: colorAppBarSponsor,
                    letterSpacing: 1.5),
              ),
              TextField(
                keyboardType: TextInputType.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle,
                  ),
                  hintText: 'PHONE',
                ),
                onChanged: (String value) {
                  sponsorController.changInitLoginPageCaNhan(value);
                },
              ),
              GestureDetector(
                onTap: () {
                  sponsorController.chanInitScreen(0);
                },
                child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: colorAppBarSponsor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      'Quay Lại',
                      style: TextStyle(fontSize: 15, color: colorBodySponsor),
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
