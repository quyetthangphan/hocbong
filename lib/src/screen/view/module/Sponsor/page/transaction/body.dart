import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: size.width > 600 ? 100 : 20, vertical: 20),
      color: colorAppBarSponsor.withOpacity(0.25),
      child: DataTable(
        columns: [
          DataColumn(
            label: Text('Mã Hash'),
          ),
          DataColumn(
            label: Text('From'),
          ),
          DataColumn(
            label: Text('To'),
          ),
          DataColumn(
            label: Text('Số tiền'),
          ),
        ],
        rows: List<DataRow>.generate(
          5,
          (index) => DataRow(cells: [
            DataCell(Text('Phan Quyết thắngPhan Quyết thắngPhan Quyết thắng')),
            DataCell(Text('Phan Quyết thắngPhan Quyết thắngPhan Quyết thắng')),
            DataCell(Text('Phan Quyết thắngPhan Quyết thắngPhan Quyết thắng')),
            DataCell(Text('1.000.000đ')),
          ]),
        ),
      ),
    );
  }
}
