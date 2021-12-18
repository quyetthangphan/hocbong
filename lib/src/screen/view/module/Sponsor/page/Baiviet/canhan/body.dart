import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/fonts.dart';
import 'package:flutter_request_ver2/src/utils/icons.dart';

import 'component/BuildListItemsHeThong.dart';
import 'component/BuildListItemsTieuChi.dart';

class SponsorTongQuanChiTietChuongTrinh extends StatefulWidget {
  const SponsorTongQuanChiTietChuongTrinh({Key key}) : super(key: key);

  @override
  _SponsorTongQuanChiTietChuongTrinhState createState() =>
      _SponsorTongQuanChiTietChuongTrinhState();
}

class _SponsorTongQuanChiTietChuongTrinhState
    extends State<SponsorTongQuanChiTietChuongTrinh> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      //color: Colors.amber,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.25,
              width: size.width,
              //color: Colors.tealAccent,
              child: Stack(
                children: [
                  Positioned(
                    top: -30,
                    left: -50,
                    child: Container(
                      height: size.height * 0.3,
                      width: size.width * 0.7,
                      child: Image.asset(
                        imageUomMam,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: -10,
                    child: Container(
                      height: size.height * 0.2,
                      width: size.width * 0.6,
                      child: Center(
                        child: Text(
                          "Ươm Mầm" + " \n" + " Tài Năng",
                          style: TextStyle(
                            fontSize: 30,
                            color: colorAppBarSponsor,
                            fontWeight: FontWeight.w700,
                            fontFamily: fontTilte,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "MONG MUỐN",
                  style: TextStyle(
                      color: colorAppBarSponsor,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 30),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: colorAppBarSponsor),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        "Với mong muốn giúp đỡ những hoàn cảnh khó khăn hoặc những cá nhân đạt thành tích nổi bật thỏa tiêu chí đề ra của quỹ học bổng, ứng dụng  được xây dựng nhằm quản lý minh bạch:" +
                            "\n" +
                            "\n" +
                            "- Các khoản đóng góp của quý mạnh thường quân." +
                            "\n" +
                            "\n" +
                            "- Thông tin chi tiết phân bổ học bổng của các mạnh thường quân đến với các cá nhân (được phân quyền để mạnh thường quân xem chi tiết các thông tin phân bổ học bổng của mình đã đóng góp). " +
                            "\n" +
                            "\n" +
                            "Hệ thống chia thành 2 phần: cá nhân và doanh nghiệp. Chức năng của hệ thống đang tiếp tục phát triển ứng dụng nền tảng Blockchain, một công nghệ không thể thiếu trong hệ thống cần tính minh bạch. ",
                        style: TextStyle(
                          fontSize: 17.5,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.9,
                  //color: Colors.pink,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildListItemsHeThong(
                        image: Image.asset(imageBlockChain),
                        textTilte:
                            "Chia thành 2 phần: cá nhân, và doanh nghiệp. Chức năng của hệ thống đang tiếp tục phát triển ứng dụng nền tảng Blockchain, một công nghệ không thể thiếu trong hệ thống cần tính minh bạch. ",
                      ),
                      SizedBox(width: 20),
                      buildListItemsTieuChi(
                        textTilte:
                            "Với tiêu chí, giúp  đúng người, nhận đúng quỹ, làm cho mọi thứ tốt đẹp hơn. Chúng tôi mong muốn nhận được nhiều hơn nữa các  góp  ý về hệ  thống để ngày càng hoàn thiện hơn.",
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 50),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(height: 30),
                Container(
                  width: size.width * 0.9,
                  child: Text(
                    "Cuối cùng để đóng góp cho quỹ, mạnh thường quân thực hiện các bước sau: ",
                    style: TextStyle(
                        color: colorAppBarSponsor,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      height: size.height * 0.7,
                      width: size.width * 0.9,
                      padding: EdgeInsets.only(top: 20),
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            //Thanh menu các Step by Step
                            Container(
                              height: size.height * 0.65,
                              width: size.width * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: colorBodySponsor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(1),
                                    offset: Offset(0, 0),
                                    blurRadius: 5,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: size.width * 0.05),
                            //ListView Step
                            Container(
                              height: size.height * 0.7,
                              width: size.width * 0.73,
                              child: Column(
                                children: [
                                  // Container Step1
                                  Container(
                                    height: size.height * 0.25,
                                    width: size.width,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            ' Chuyển khoản vào tài khoản số: 0946734111 Ngân hàng Quân Đội MB Bank. '
                                            'Với nội dung:',
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700),
                                            textAlign: TextAlign.justify,
                                          ),
                                          Text(
                                            '\n'
                                            'Góp quỹ học bổng chương trình iSMS, số điện thoại, cá nhân hoặc tổ chức, số tiền.',
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: colorAppBarSponsor,
                                            ),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Container Step2
                                  Container(
                                    height: size.height * 0.2,
                                    width: size.width,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Center(
                                      child: Text(
                                        'Trong 24h, đại diện bên mình sẽ liên  lạc cho mạnh thường quân xác nhận.',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                  // Container Step3
                                  Container(
                                    height: size.height * 0.2,
                                    width: size.width,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Center(
                                      child: Text(
                                        'Mạnh thường quân nhận email từ hệ thống iSMS và truy cập kiểm soát học bổng đã đóng góp.',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Bước 3
                    Positioned(
                      bottom: size.height * 0.105,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colorAppBarSponsor,
                        ),
                        child: Center(
                          child: Text(
                            'B3',
                            style: TextStyle(
                                fontSize: 25, color: colorBodySponsor),
                          ),
                        ),
                      ),
                    ),
                    //Bước 2
                    Positioned(
                      top: size.height * 0.34,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colorAppBarSponsor,
                        ),
                        child: Center(
                          child: Text(
                            'B2',
                            style: TextStyle(
                                fontSize: 25, color: colorBodySponsor),
                          ),
                        ),
                      ),
                    ),
                    //Bước 1
                    Positioned(
                      top: size.height * 0.12,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colorAppBarSponsor,
                        ),
                        child: Center(
                          child: Text(
                            'B1',
                            style: TextStyle(
                                fontSize: 25, color: colorTextSponsor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(height: 10),
                // Liên Hệ
                Container(
                  //color: Colors.brown,
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        width: size.width,
                        child: Text(
                          'SPONSOR',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              fontFamily: fontTilte,
                              color: colorAppBarSponsor),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: size.width,
                        child: Text(
                          'Liên Hệ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.perm_identity),
                                  SizedBox(width: 10),
                                  Text('Nguyễn Minh Sơn'),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.email),
                                  SizedBox(width: 10),
                                  Text('devisms@googlegroups.com'),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.phone),
                                  SizedBox(width: 10),
                                  Text('0946734111'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
