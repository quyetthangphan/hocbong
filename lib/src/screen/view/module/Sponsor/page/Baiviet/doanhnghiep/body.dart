import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/fonts.dart';

class BaiVietDesktop extends StatelessWidget {
  const BaiVietDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            'ƯƠM MẦM TÀI NĂNG',
            style: TextStyle(
              fontSize: 30,
              color: colorAppBarSponsor,
              fontWeight: FontWeight.w700,
              fontFamily: fontTilte,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: size.width * 0.6,
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Divider(
            indent: 100,
            endIndent: 100,
            thickness: 3,
            color: Colors.grey,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.25,
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                    child: Column(
                      children: [
                        Text(
                          'Bước 1',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 10),
                        Text(
                          ' Chuyển khoản vào tài khoản số: 0946734111 Ngân hàng Quân Đội MB Bank. '
                          'Với nội dung:',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          '\n'
                          'Góp quỹ học bổng chương trình iSMS, số điện thoại, cá nhân hoặc tổ chức, số tiền.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: colorAppBarSponsor,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.25,
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                    child: Column(
                      children: [
                        Text(
                          'Bước 2',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Trong 24h, đại diện bên mình sẽ liên  lạc cho mạnh thường quân xác nhận.',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.25,
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                    child: Column(
                      children: [
                        Text(
                          'Bước 3',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 10),
                        Text(
                          ' Mạnh thường quân nhận email từ hệ thống iSMS và truy cập kiểm soát học bổng đã đóng góp.',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue[100],
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, bottom: 10, right: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mọi người đóng góp ý kiến quá kênh: ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Icon(Icons.perm_identity),
                      SizedBox(width: 10),
                      Text("Nguyễn Minh Sơn"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 10),
                      Text('devisms@googlegroups.com'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Text('0946734111'),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
