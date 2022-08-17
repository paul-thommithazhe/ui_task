import 'package:flutter/material.dart';
import 'package:ui_task/utils/constants.dart';

class CustomForwardBackWardButton extends StatelessWidget {
  const CustomForwardBackWardButton({Key? key, this.onTap, this.icon})
      : super(key: key);
  final VoidCallback? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.bottomRight,
        child: CircleAvatar(
          radius: 19,
          backgroundColor: kPrimaryColor,
          child: Icon(
            icon,
            size: 30,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
