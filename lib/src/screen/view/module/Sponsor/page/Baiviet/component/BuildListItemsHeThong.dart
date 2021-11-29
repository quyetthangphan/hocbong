import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class buildListItemsHeThong extends StatelessWidget {
  String textTilte;
  Image image;
  buildListItemsHeThong({Key key, this.image, this.textTilte})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width * 0.8,
          //color: Colors.amber,
          padding: EdgeInsets.only(top: 30),
          child: Container(
            height: size.height * 0.55,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: colorAppBarSponsor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 30),
                    child: image,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        textTilte,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            left: size.width * 0.24,
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(145, 187, 229, 1),
              ),
              child: Center(
                child: Text(
                  "Hệ thống",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ))
      ],
    );
  }
}
