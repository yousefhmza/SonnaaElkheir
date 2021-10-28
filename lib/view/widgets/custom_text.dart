import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final TextOverflow? textOverflow;
  final int? maxLines;

  const CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.maxLines,
    this.color = Colors.black,
    this.textOverflow,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = "regular",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      overflow: textOverflow,
    );
  }
}
