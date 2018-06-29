import 'dart:math';

import 'package:flutter/material.dart';

class PageReveal extends StatelessWidget {
  final double revealPercent;
  final Widget child;

  PageReveal({this.child, this.revealPercent});
  @override
  Widget build(BuildContext context) {
    return new ClipOval(
      clipper: new CircleRevealClip(revealPercent),
      child: child,
    );
  }
}

class CircleRevealClip extends CustomClipper<Rect> {
  final double revealPercent;

  CircleRevealClip(this.revealPercent);
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    final epicenter = new Offset(size.width / 2, size.height / 2);

    double theta = atan(epicenter.dy / epicenter.dx);
    final distanceToCorner = epicenter.dy / sin(theta);

    final radius = distanceToCorner * revealPercent;
    final diameter = 2 * radius;

    //return new Rect.fromLTWH(epicenter.dx, epicenter.dy, diameter, diameter);
    return new Rect.fromLTWH(
        epicenter.dx - radius, epicenter.dy - radius, diameter, diameter);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
