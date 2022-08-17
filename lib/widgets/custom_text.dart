import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    Key? key,
    required this.titleText,
    this.fontWeight,
    this.fontSize = 15,
    this.textAlign,
    this.fontColor,
    this.onTap,
  }) : super(key: key);
  final String titleText;
  FontWeight? fontWeight;
  double? fontSize;
  TextAlign? textAlign;
  Color? fontColor;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        textAlign: textAlign,
        titleText,
        style: TextStyle(
            fontSize: fontSize, fontWeight: fontWeight, color: fontColor),
      ),
    );
  }
}
