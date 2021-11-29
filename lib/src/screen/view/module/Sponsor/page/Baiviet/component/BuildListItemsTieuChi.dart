import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/dialog.dart';

class buildListItemsTieuChi extends StatefulWidget {
  String textTilte;
  buildListItemsTieuChi({Key key, this.textTilte}) : super(key: key);

  @override
  _buildListItemsTieuChiState createState() => _buildListItemsTieuChiState();
}

// ignore: camel_case_types
class _buildListItemsTieuChiState extends State<buildListItemsTieuChi> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    return Stack(
      children: [
        Container(
          width: size.width * 0.8,
          //color: Colors.green,
          padding: EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Container(
              height: size.height * 0.55,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: colorAppBarSponsor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      buildContainerTextTilte(),
                      SizedBox(height: 10),
                      Container(
                        height: 200,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        color: colorBodySponsor,
                        child: buildTextFormField(),
                      ),
                      SizedBox(height: 5),
                      buildButton(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: size.width * 0.24,
          top: 5,
          child: Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(145, 187, 229, 1),
            ),
            child: Center(
              child: Text(
                "Tiêu chí",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }

  final formKey = GlobalKey<FormState>();
  String valueTextFormField = '';
  final TextEditingController textRemove = new TextEditingController();
  Widget buildTextFormField() => TextFormField(
        controller: textRemove,
        onChanged: (value) => setState(() => valueTextFormField = value),
        maxLines: 20,
        keyboardType: TextInputType.multiline,
        validator: (value) {
          value == ''
              ? ''
              : DialogFeedback.showDiaglogItemLogout(
                  context, () => textRemove.clear());

          return null;
        },
      );

  Widget buildButton() => TextButton(
      onPressed: () {},
      child: Material(
        child: InkWell(
          onTap: () {
            final isValide = formKey.currentState.validate();
            buildTextFormField();
          },
          splashColor: Colors.blue,
          child: Container(
            height: 35,
            width: 100,
            child: Center(
              child: Text(
                'Góp ý',
                style: TextStyle(
                    color: colorAppBarSponsor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ));

  Widget buildContainerTieuChi() => Positioned(
          child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(145, 187, 229, 1),
        ),
        child: Center(
          child: Text(
            "Tiêu chí",
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
      ));

  Widget buildContainerTextTilte() => Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            widget.textTilte,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      );
}
