import 'package:flutter/material.dart';

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height);

    path.quadraticBezierTo(
        size.width / 4, size.height - 50, size.width / 2, size.height - 30);

    path.quadraticBezierTo(
        size.width * .75, size.height - 10, size.width, size.height - 80);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
