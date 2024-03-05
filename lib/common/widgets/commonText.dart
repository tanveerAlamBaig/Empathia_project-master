import 'dart:ui';
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? weight;
  final Color? textColor;
  const CommonText(
      {super.key,
        required this.text,
        this.fontSize,
        this.weight,
        this.textColor});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      style: TextStyle(
        fontWeight: weight??FontWeight.w500,
        fontSize: fontSize??15,
        color: textColor ,


      ),
    );
  }
}
class CommonHeading extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? weight;
  final Color? textColor;
  const CommonHeading(
      {super.key,
        required this.text,
        this.fontSize,
        this.weight,
        this.textColor});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      style: TextStyle(
        fontWeight: weight??FontWeight.bold,
        fontSize: fontSize??22,
        color: textColor ,


      ),
    );
  }
}