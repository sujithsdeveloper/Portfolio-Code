import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';

TextStyle headingStyle() {
  return const TextStyle(
      color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold);
}

GradientText GradientTextStyle({required String text,required double size}) {
  return GradientText(
      Text(
        text,
        style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
      ),
      colors: const [Color(0xff814ceb), Color(0xff2d155d)]);
}
