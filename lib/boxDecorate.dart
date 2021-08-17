import 'package:flutter/material.dart';

Decoration BoxDecorationShadowRectangle() {
  return BoxDecoration(boxShadow: [
    BoxShadow(
        color: Colors.blue[900]!.withOpacity(0.2),
        blurRadius: 10,
        spreadRadius: 2,
        offset: Offset(2, 0)),
    BoxShadow(
        color: Colors.white,
        blurRadius: 0,
        spreadRadius: -2,
        offset: Offset(0, 0)),
  ], shape: BoxShape.rectangle, color: Colors.white70);
}
