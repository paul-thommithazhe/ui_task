import 'package:flutter/material.dart';
import 'package:ui_task/widgets/custom_text.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.onTap,
    this.icon,
    required this.title,
  });

  final String title;
  final VoidCallback? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 55,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color.fromARGB(
                255,
                212,
                209,
                209,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(titleText: title),
                Icon(icon,color: Colors.grey,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
