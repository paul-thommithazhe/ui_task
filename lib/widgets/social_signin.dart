import 'package:flutter/material.dart';

class SocialSignin extends StatelessWidget {
  const SocialSignin({Key? key, required this.imagepath}) : super(key: key);
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 35,
      child: Image.asset(imagepath,fit: BoxFit.cover,),
    );
  }
}

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: (size.width * 0.5) - 55,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ),
    );
  }
}
