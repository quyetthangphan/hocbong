import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class HoverAnimated extends StatefulWidget {
  final double height;
  final double width;
  final double thinkness;
  final Widget child;
  final Curve curve;
  final int millisecons;

  HoverAnimated(
      {this.child,
      this.curve,
      this.millisecons,
      this.height,
      this.width,
      this.thinkness});

  @override
  _HoverAnimatedState createState() => _HoverAnimatedState();
}

class _HoverAnimatedState extends State<HoverAnimated> {
  bool animate = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: MouseRegion(
        onEnter: (value) {
          setState(() {
            animate = true;
          });
        },
        onExit: (value) {
          setState(() {
            animate = false;
          });
        },
        child: Stack(
          children: [
            AnimatedContainer(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: animate
                    ? colorAppBarSponsor
                    : colorBodySponsor.withOpacity(0.5),
              ),
              duration: Duration(microseconds: 500),
              curve: widget.curve,
              height: widget.height,
              width: widget.width,
              child: widget.child,
            )
          ],
        ),
      ),
    );
  }
}
