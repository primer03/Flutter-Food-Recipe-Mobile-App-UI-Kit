import 'package:flutter/material.dart';
import 'dart:math' as Math;

class CustomNotchedRectangle extends NotchedShape {
  final double borderRadius;

  CustomNotchedRectangle({this.borderRadius = 16.0});

  @override
  Path getOuterPath(Rect host, Rect? guest) {
    final Path path = Path();

    if (guest == null || !host.overlaps(guest)) {
      path.addRRect(RRect.fromRectAndCorners(
        host,
        topLeft: Radius.circular(borderRadius),
        topRight: Radius.circular(borderRadius),
      ));
      return path;
    }

    final double notchRadius = guest.width / 2.0;

    const double s1 = 15.0;
    const double s2 = 1.0;

    final double r = notchRadius;
    final double a = -1.0 * r - s2;
    final double b = host.top;

    final double n2 = Math.sqrt(Math.pow(r, 2) - Math.pow(a - s1, 2));
    final double p2 = Math.sqrt(Math.pow(r, 2) - Math.pow(a, 2));
    final double q2 = p2 + r - s1;

    path.moveTo(host.left, host.top);
    path.lineTo(guest.center.dx - q2, host.top);
    path.lineTo(guest.left + s1, host.top);
    path.arcToPoint(
      Offset(guest.right - s1, host.top),
      radius: Radius.circular(notchRadius),
      clockwise: false,
    );
    path.lineTo(guest.center.dx + q2, host.top);
    path.lineTo(host.right, host.top);
    path.lineTo(host.right, host.bottom);
    path.lineTo(host.left, host.bottom);
    path.close();

    return path;
  }
}
