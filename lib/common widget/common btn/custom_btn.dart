import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.onTap,
    this.title = 'Get Start',
    this.height = 48,
    this.width = double.maxFinite,
    this.titleColor = Colors.black,
    this.backGroundColor= Colors.blue,
    this.marginHorizontal = 0,
    this.marginVertical = 0,
    this.fillColor = Colors.transparent,
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: marginHorizontal, vertical: marginVertical
        ),
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 1,color:fillColor),
          borderRadius: BorderRadius.circular(10),
          color: backGroundColor),
        child: CustomText(
          textAlign: TextAlign.center,
          color: titleColor,
          fontWeight: FontWeight.bold,
          text: title,
        ),
      ),
    );
  }
}
