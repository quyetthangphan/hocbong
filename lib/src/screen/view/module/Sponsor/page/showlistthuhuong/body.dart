import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/OTD/DangKyOTD.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class ShowListThuHuong extends StatefulWidget {
  // final String name;
  // final String phone;
  // final String wallet;
  // final String address;
  ShowListThuHuong({Key key}) : super(key: key);

  @override
  _ShowListThuHuongState createState() => _ShowListThuHuongState();
}

class _ShowListThuHuongState extends State<ShowListThuHuong> {
  DangKyOTD dk = DangKyOTD();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: -MediaQuery.of(context).size.width * 0.1,
          left: -MediaQuery.of(context).size.width * 0.1,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.width * 0.3,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(42, 124, 246, 0.1),
            ),
          )),
      Positioned(
          bottom: -MediaQuery.of(context).size.width * 0.1,
          right: -MediaQuery.of(context).size.width * 0.2,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.width * 0.3,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(42, 124, 246, 0.1),
            ),
          )),
      SizedBox(
        width: double.infinity,
        height: 50,
        child: Center(child: Text('Danh sách đăng ký học bổng')),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: colorAppBarSponsor.withOpacity(0.25),
          child: DataTable(
            columns: [
              DataColumn(
                label: Text('Tên'),
              ),
              DataColumn(
                label: Text('Số điện thoại'),
              ),
              DataColumn(
                label: Text('Mã ví'),
              ),
              DataColumn(
                label: Text('Địa chỉ'),
              ),
            ],
            rows: List<DataRow>.generate(
              5,
              (index) => DataRow(cells: [
                DataCell(Text('Phan Quyết Thắng')),
                DataCell(Text('0789429140')),
                DataCell(
                    Text('Phan Quyết thắngPhan Quyết thắngPhan Quyết thắng')),
                DataCell(Text(
                    'dáhdsak djshakjdhaskjhkjsaSố điện thoạiSố điện thoại')),
              ]),
            ),
          ),
        ),
      ),
    ]);
  }
}
