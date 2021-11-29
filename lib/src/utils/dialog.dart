import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Diaglog {
  static Future<void> showDiaglogItem(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Thông Báo'),
          content: Text('Bạn không có quyền truy cập vào thông tin này'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('Xác Nhận'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class DiagLogOut {
  static Future<void> showDiaglogItemLogout(
      BuildContext context, Function press) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Thông Báo'),
          content: Text('Bạn Có Muốn Đăng Xuất'),
          actions: <Widget>[
            CupertinoDialogAction(
              onPressed: () {
                press();
                Navigator.pop(context);
              },
              child: Text('Yes'),
            ),
            CupertinoDialogAction(
              child: Text('No'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

class DialogFeedback {
  static Future<void> showDiaglogItemLogout(
      BuildContext context, Function call) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Thông Báo'),
          content:
              Text('Cảm ơn bạn đã góp ý để chúng tôi có thể hoàn thiện hơn.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('Ok'),
              onPressed: () {
                Navigator.pop(context);
                if (call != null) {
                  call();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
