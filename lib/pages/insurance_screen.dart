import 'package:flutter/material.dart';
import 'package:ui_task/pages/login_screen.dart';
import 'package:ui_task/utils/constants.dart';
import 'package:ui_task/widgets/custom_container.dart';
import 'package:ui_task/widgets/custom_forward_backward_button.dart';
import 'package:ui_task/widgets/custom_text.dart';
import 'package:ui_task/widgets/custom_textfield.dart';

class InsuranceScreen extends StatefulWidget {
  InsuranceScreen({Key? key}) : super(key: key);

  @override
  State<InsuranceScreen> createState() => _InsuranceScreenState();
}

class _InsuranceScreenState extends State<InsuranceScreen> {
  final TextEditingController insuranceCompanyController =
      TextEditingController();

  final TextEditingController policyNumberController = TextEditingController();

  final TextEditingController insuranceUploadController =
      TextEditingController();
  var _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kSizedBox20,
                CustomText(
                  titleText: 'Motor Vehicle Insurance',
                  fontSize: 20,
                ),
                kSizedBox20,
                CustomTextField(
                   onChanged: (text) => setState(() => text),
                    controller: insuranceCompanyController,
                    hintText: 'Insurance Company Name *'),
                kSizedBox,
                CustomTextField(
                 onChanged: (text) => setState(() => text),
                  controller: policyNumberController,
                  hintText: 'Policy Number',
                ),
                kSizedBox,
                CustomTextField(
                 onChanged: (text) => setState(() => text),
                    controller: insuranceUploadController,
                    hintText: 'Motor Vehicle Insurance Upload'),
                kSizedBox,
                const CustomContainer(
                  
                  title: 'Choose File *',
                  icon: Icons.add_circle,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5 - 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomForwardBackWardButton(
                        onTap: () => Navigator.pop(context),
                        icon: Icons.arrow_back,
                      ),
                      CustomForwardBackWardButton(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        ),
                        icon: Icons.arrow_forward,
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      titleText: 'Already User?',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    CustomText(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      ),
                      titleText: ' Login',
                      fontColor: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
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
