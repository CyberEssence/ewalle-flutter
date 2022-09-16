import 'package:flutter/material.dart';

class MyTriangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, size.height/6);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, 0.0);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(MyTriangle oldClipper) => false;
}
