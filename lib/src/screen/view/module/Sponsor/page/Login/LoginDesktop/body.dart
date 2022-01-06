import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/icons.dart';
import 'package:google_fonts/google_fonts.dart';

class SponsorLoginDesktop extends StatefulWidget {
  const SponsorLoginDesktop({Key key}) : super(key: key);

  @override
  _SponsorLoginDesktopState createState() => _SponsorLoginDesktopState();
}

class _SponsorLoginDesktopState extends State<SponsorLoginDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(86, 204, 242, 1),
          Color.fromRGBO(47, 128, 237, 1),
        ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
        child: ContainerLogin(size: size),
      ),
    );
  }
}

class ContainerLogin extends StatelessWidget {
  const ContainerLogin({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 200, vertical: 100),
      decoration: BoxDecoration(color: colorBodySponsor, boxShadow: [
        BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 1,
            color: Color.fromRGBO(255, 255, 255, 0.1)),
        BoxShadow(
            offset: Offset(0, 50),
            blurRadius: 100,
            spreadRadius: -20,
            color: Color.fromRGBO(50, 50, 93, 0.25)),
        BoxShadow(
            offset: Offset(0, 30),
            blurRadius: 60,
            spreadRadius: -30,
            color: Color.fromRGBO(0, 0, 0, 0.3))
      ]),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 400,
              child: Image.asset(
                loginImage,
              ),
            ),
          ),
          ContainerScreenLogin(size: size)
        ],
      ),
    );
  }
}

class ContainerScreenLogin extends StatefulWidget {
  const ContainerScreenLogin({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _ContainerScreenLoginState createState() => _ContainerScreenLoginState();
}

class _ContainerScreenLoginState extends State<ContainerScreenLogin> {
  SponsorController sponsorController;
  @override
  Widget build(BuildContext context) {
    sponsorController = SponsorController(context: context);
    return Expanded(
      flex: 2,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    color: colorAppBarSponsor,
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                        color: Colors.white.withOpacity(1),
                        offset: Offset(2, 5),
                        blurRadius: 3,
                      ),
                      Shadow(
                        color: colorAppBarSponsor.withOpacity(1),
                        offset: Offset(1, 3),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 100),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.account_circle),
                        hintText: 'Phone',
                      ),
                      onChanged: (String value) {
                        sponsorController.changInitLoginPageCaNhan(value);
                      },
                    ),
                    SizedBox(height: 16),
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  sponsorController.chanInitScreen(0);
                },
                child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: colorAppBarSponsor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 16, color: colorBodySponsor),
                    ))),
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment(-0.5, -0.5),
                  child: InkWell(
                    onTap: () {
                      sponsorController.chanInitScreen(0);
                    },
                    child: Text(
                      'Back home > > >',
                      style: TextStyle(
                          fontSize: 14,
                          color: colorAppBarSponsor.withOpacity(0.5),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
