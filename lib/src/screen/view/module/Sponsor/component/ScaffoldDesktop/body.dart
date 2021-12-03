import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/Login/LoginMobile/body.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/dialog.dart';
import 'package:provider/provider.dart';

class SponsorScaffoldDesktop extends StatefulWidget {
  final Widget child;
  SponsorScaffoldDesktop({this.child});

  @override
  _SponsorScaffoldDesktopState createState() => _SponsorScaffoldDesktopState();
}

class _SponsorScaffoldDesktopState extends State<SponsorScaffoldDesktop> {
  SponsorController sponsorController = SponsorController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    sponsorController = SponsorController(context: context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(size.width, 1000),
        child: Container(
          color: colorAppBarSponsor,
          padding: EdgeInsets.all(18),
          child: Row(
            children: [
              SizedBox(width: 20),
              Text(
                'SPONSOR',
                style: TextStyle(
                    color: colorBodySponsor,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              MenuItems(
                title: "Trang chủ",
                press: () {
                  sponsorController.changeInitPageHome(0);
                },
              ),
              MenuItems(
                title: "Danh sách",
                press: () {
                  sponsorController.changeInitPageHome(1);
                  sponsorController.changInitListDoanhNghiepVaCaNhan(0);
                },
              ),
              MenuItems(
                title: "Bài Viết",
                press: () {},
              ),
              Container(
                //color: Colors.amber,
                height: 50,
                child: Consumer<SponsorModel>(
                  builder: (context, value, child) {
                    if (value.loginCaNhan != null) {
                      return GestureDetector(
                        onTap: () {
                          DiagLogOut.showDiaglogItemLogout(
                            context,
                            () {
                              Provider.of<SponsorModel>(context, listen: false)
                                  .exitLogin();
                            },
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${value.loginCaNhan.name}',
                              style: TextStyle(
                                color: colorTextSponsor,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '${value.loginCaNhan.money}đ',
                              style: TextStyle(
                                color: colorTextSponsor,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else if (value.loginDoanhNghiep != null) {
                      return GestureDetector(
                        onTap: () {
                          DiagLogOut.showDiaglogItemLogout(
                            context,
                            () {
                              Provider.of<SponsorModel>(context, listen: false)
                                  .exitLogin();
                            },
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${value.loginDoanhNghiep.name}',
                              style: TextStyle(
                                color: colorTextSponsor,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '${value.loginDoanhNghiep.money}đ',
                              style: TextStyle(
                                color: colorTextSponsor,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          sponsorController.checkLoginPhoneCaNhan();
                        },
                        child: InkWell(
                          child: Center(
                              child: Text('Đăng nhập',
                                  style: TextStyle(
                                      color: colorBodySponsor, fontSize: 16))),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: widget.child,
        height: size.height,
        width: size.width,
        color: colorBodySponsor,
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  final String title;
  final Function press;
  MenuItems({
    Key key,
    this.press,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(color: colorBodySponsor, fontSize: 16),
        ),
      ),
    );
  }
}
