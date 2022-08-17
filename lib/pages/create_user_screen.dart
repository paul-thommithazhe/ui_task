import 'package:flutter/material.dart';
import 'package:ui_task/pages/licence_screen.dart';
import 'package:ui_task/pages/login_screen.dart';
import 'package:ui_task/utils/constants.dart';
import 'package:ui_task/widgets/custom_forward_backward_button.dart';
import 'package:ui_task/widgets/custom_icon_button.dart';
import 'package:ui_task/widgets/custom_text.dart';
import 'package:ui_task/widgets/custom_textfield.dart';
import 'package:intl/intl.dart';

class CreateUserScreen extends StatefulWidget {
  CreateUserScreen({super.key});

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {

  final TextEditingController firstnameController = TextEditingController();

  final TextEditingController lastnameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController usernameController = TextEditingController();

  final TextEditingController profileController = TextEditingController();

  final TextEditingController contactNumberController = TextEditingController();

  final TextEditingController dobController = TextEditingController();

  String dateValue = DateFormat('yMd').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    titleText: 'Create User',
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                  ),
                  const SizedBox(height: 20),
                  CustomText(
                    titleText: 'Personal Details',
                    fontSize: 20,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                      controller: firstnameController, hintText: 'First Name*'),
                  kSizedBox,
                  CustomTextField(
                      controller: lastnameController, hintText: 'Last Name*'),
                  kSizedBox,
                  CustomTextField(
                      controller: emailController, hintText: 'Email id*'),
                  kSizedBox,
                  CustomTextField(
                      controller: usernameController, hintText: 'Username*'),
                  kSizedBox,
                  CustomTextField(
                    controller: profileController,
                    hintText: 'Profile*',
                    iconButton: CustomIconButton(
                        onPressed: () {}, icon: Icons.arrow_drop_down),
                  ),
                  kSizedBox,
                  CustomTextField(
                      controller: contactNumberController,
                      hintText: 'Contact Number*'),
                  kSizedBox,
                  CustomTextField(
                    controller: dobController,
                    hintText:  dateValue,
                    iconButton: CustomIconButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2222),
                        ).then((date) {
                          setState(() {
                            dateValue = DateFormat('dd-MM-yyy')
                                .format(date!)
                                .toString();
                          });
                        });
                      },
                      icon: Icons.calendar_month,
                    ),
                  ),
                  kSizedBox20,
                  CustomForwardBackWardButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LicenceDetailsScreen()),
                      );
                    },
                    icon: Icons.arrow_forward,
                  ),
                  kSizedBox40,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        titleText: 'Already User?',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        ),
                        titleText: ' Login',
                        fontSize: 16,
                        fontColor: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
