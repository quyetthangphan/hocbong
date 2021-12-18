import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/dialog.dart';
import 'package:provider/provider.dart';

class SponsorScaffoldMobile extends StatefulWidget {
  final Widget child;
  SponsorScaffoldMobile({this.child});
  @override
  _SponsorScafolldMobileState createState() => _SponsorScafolldMobileState();
}

class _SponsorScafolldMobileState extends State<SponsorScaffoldMobile> {
  double _height = 0;
  double _width = 0;
  int _selectedIndex = 0;
  SponsorController sponsorController = SponsorController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      sponsorController.changeInitPageHome(index);
      sponsorController.onPressedList(index);
      sponsorController.onPressedList(index - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _width = size.width;
    sponsorController = SponsorController(context: context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: colorAppBarSponsor,
        // leading: GestureDetector(
        //   onTap: () {
        //     setState(() {
        //       _height = _height == 0 ? size.height : 0;
        //     });
        //   },
        //   child: Container(
        //     height: size.height,
        //     child: Icon(
        //       Icons.menu,
        //       color: colorTextSponsor,
        //     ),
        //   ),
        // ),
        title: Text(
          'SPONSOR',
          style: TextStyle(color: colorTextSponsor),
        ),
        actions: [
          Consumer<SponsorModel>(builder: (context, value, child) {
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
                child: Container(
                  color: colorAppBarSponsor,
                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${value.loginCaNhan.name}',
                          style: TextStyle(
                            color: colorTextSponsor,
                            letterSpacing: 1.5,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${value.loginCaNhan.money}đ',
                          style: TextStyle(
                            color: colorTextSponsor,
                            letterSpacing: 1.5,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
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
                child: Container(
                  color: colorAppBarSponsor,
                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${value.loginDoanhNghiep.name}',
                          style: TextStyle(
                            color: colorTextSponsor,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${value.loginDoanhNghiep.money}đ',
                          style: TextStyle(
                            color: colorTextSponsor,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else
              return GestureDetector(
                onTap: () {
                  sponsorController.checkLoginPhoneCaNhan();
                },
                child: Container(
                  height: double.infinity,
                  margin: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: colorTextSponsor,
                    size: 32,
                  ),
                ),
              );
          })
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: colorBodySponsor,
        child: widget.child,

//Stack
        // child: Stack(
        //   children: [
        //     widget.child,
        //     AnimatedContainer(
        //       duration: Duration(milliseconds: 2000),
        //       curve: Curves.fastLinearToSlowEaseIn,
        //       height: _height,
        //       width: _width,
        //       child: Drawer(
        //         child: Material(
        //           color: colorAppBarSponsor,
        //           child: ListView(
        //             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        //             children: [
        //               SizedBox(height: 30),
        //               buildMenuItem(
        //                   icon: Icons.auto_stories,
        //                   text: "Câu Chuyện",
        //                   onClicked: () {
        //                     setState(() {
        //                       _height = _height == 0 ? size.height : 0;
        //                     });
        //                     sponsorController.changeInitBuildMenuItem(0);
        //                   }),
        //               SizedBox(height: 30),
        //               buildMenuItem(
        //                 icon: Icons.auto_stories,
        //                 text: "Quỹ Học Bỗng",
        //                 onClicked: () {
        //                   setState(() {
        //                     _height = _height == 0 ? size.height : 0;
        //                   });
        //                   sponsorController.changeInitBuildMenuItem(1);
        //                 },
        //               ),
        //               SizedBox(height: 30),
        //               buildMenuItem(
        //                 icon: Icons.new_releases_outlined,
        //                 text: "Tin Tức",
        //               ),
        //               SizedBox(height: 30),
        //               buildMenuItem(
        //                 icon: Icons.phone_callback,
        //                 text: "Liên Hệ",
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: colorBodySponsor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang Chủ',
            backgroundColor: Color(0xFF1565C0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Cá Nhân',
            backgroundColor: Color(0xFF1565C0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Doanh Nghiệp',
            backgroundColor: Color(0xFF1565C0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Bài Viết',
            backgroundColor: Color(0xFF1565C0),
          ),
        ],
      ),
    );
  }
}
