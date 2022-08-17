import 'package:flutter/material.dart';
import 'package:ui_task/utils/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.size
  }) : super(key: key);

  final double? size;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: kPrimaryColor,
        fixedSize:  Size(size!,50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Text('Login'),
    );
  }
}
