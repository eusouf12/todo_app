import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.onTap,
    this.title = 'Get Start',
    this.height = 44,
    this.width = double.maxFinite,
    this.titleColor = Colors.white,
    this.backGroundColor = const Color(0xFF84C000),
    this.marginHorizontal = 0,
    this.marginVertical = 0,
    this.fillColor = Colors.transparent,
    this.icon,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w600,
  });

  final VoidCallback onTap;
  final String title;
  final Color titleColor;
  final Color backGroundColor;
  final double height;
  final double width;
  final double marginVertical;
  final double marginHorizontal;
  final Color fillColor;
  final IconData? icon;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: marginHorizontal,
          vertical: marginVertical,
        ),
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: fillColor),
          borderRadius: BorderRadius.circular(6),
          color: backGroundColor,
        ),
                child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, color: fillColor, size: 18),
              const SizedBox(width: 6),
            ],
        CustomText(
          textAlign: TextAlign.center,
          color: titleColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          text: title,
       ),
            
          ],
        ),
      ),
    );
  }
}

