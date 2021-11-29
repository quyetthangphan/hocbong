import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class TextFieldSearch extends StatelessWidget {
  final Function search;
  const TextFieldSearch({Key key, this.search}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width * 0.7,
        //height: size.height * 0.05,
        decoration: BoxDecoration(
          color: colorBodySponsor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Tìm kiếm'),
                  onChanged: search,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
