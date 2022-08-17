import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    this.iconButton,
    this.onChanged,
  });
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final Widget? iconButton;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: isPassword,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: iconButton,
        disabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(width: 2, color: Color.fromARGB(255, 88, 84, 84))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                width: 1.5, color: Color.fromARGB(255, 233, 230, 230))),
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.red),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(
            width: 1,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
