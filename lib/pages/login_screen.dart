import 'package:flutter/material.dart';
import 'package:ui_task/pages/create_user_screen.dart';
import 'package:ui_task/utils/constants.dart';
import 'package:ui_task/widgets/custom_button.dart';
import 'package:ui_task/widgets/custom_icon_button.dart';
import 'package:ui_task/widgets/custom_text.dart';
import 'package:ui_task/widgets/custom_textfield.dart';
import 'package:ui_task/widgets/social_signin.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              children: [
                kSizedBox,
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    titleText: 'Login',
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
               kSizedBox90,
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        titleText: 'Hi There!',
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                      kSizedBox,
                      CustomText(
                        textAlign: TextAlign.center,
                        titleText: 'welcome back you\'ve\n been missed ',
                        fontSize: 17,
                      ),
                    ],
                  ),
                ),
                kSizedBox40,
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      kSizedBox,
                      CustomTextField(
                        controller: usernameController,
                        hintText: 'Username',
                      ),
                      kSizedBox,
                      CustomTextField(
                        iconButton: CustomIconButton(
                          onPressed: () {},
                          icon: Icons.visibility_off,
                        ),
                        isPassword: true,
                        controller: passwordController,
                        hintText: 'Password',
                      ),
                      kSizedBox,
                      CustomText(
                        titleText: 'Forgot Password?',
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                CustomButton(
                  size: size.width,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HorizontalDivider(size: size),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: CustomText(titleText: 'OR'),
                    ),
                    HorizontalDivider(size: size),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SocialSignin(
                      imagepath: 'assets/images/google_signin.jpeg',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SocialSignin(imagepath: 'assets/images/facebook_signin.jpeg')
                  ],
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      titleText: 'Don\'t have an Account?',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    CustomText(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateUserScreen(),
                          ),
                        );
                      },
                      titleText: ' Sign Up',
                      fontColor: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
