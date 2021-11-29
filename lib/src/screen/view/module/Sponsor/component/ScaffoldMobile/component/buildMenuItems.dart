import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class buildMenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onClicked;
  const buildMenuItem({Key key, this.icon, this.text, this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: colorBodySponsor,
      ),
      title: Text(
        text,
        style: TextStyle(color: colorBodySponsor),
      ),
      hoverColor: Colors.white70,
      onTap: onClicked,
    );
  }
}
