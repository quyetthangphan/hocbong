import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class TextFieldSearchDesktop extends StatelessWidget {
  final Function search;
  const TextFieldSearchDesktop({Key key, this.search}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        height: 40,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
            Expanded(
                child: Container(
              child: TextField(
                decoration: InputDecoration(hintText: 'Search'),
                // onChanged: search,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
