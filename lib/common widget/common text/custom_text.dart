import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  const CustomText({
    super.key,
    this.left=0,
    this.right=0,
    this.bottom=0,
    this.top=0,
    this.textAlign = TextAlign.center,
    this.text='',
    this.fontSize =14,
    this.fontWeight=FontWeight.w400,
    this.color,
    this.lineHeight=0,
    this.maxLines,
    this.textDecoration,
    this.textDecorationColor,
  });

  final double left;
  final double right;
  final double top;
  final double bottom;
  final TextAlign textAlign;
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight fontWeight;
  final double lineHeight;
  final int? maxLines;
  final Color? textDecorationColor;
  final TextDecoration? textDecoration;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(
        left: left, right: right, top: top, bottom: bottom),
      child: Text(
        text ,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          decoration: textDecoration,
          decorationColor: textDecorationColor,
        ),
      ),
    );
  }
}
