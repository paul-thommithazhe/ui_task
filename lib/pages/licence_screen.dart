import 'package:flutter/material.dart';
import 'package:ui_task/pages/insurance_screen.dart';
import 'package:ui_task/pages/login_screen.dart';
import 'package:ui_task/utils/constants.dart';
import 'package:ui_task/widgets/custom_container.dart';
import 'package:ui_task/widgets/custom_forward_backward_button.dart';
import 'package:ui_task/widgets/custom_icon_button.dart';
import 'package:ui_task/widgets/custom_text.dart';
import 'package:ui_task/widgets/custom_textfield.dart';

class LicenceDetailsScreen extends StatefulWidget {
  LicenceDetailsScreen({Key? key}) : super(key: key);

  @override
  State<LicenceDetailsScreen> createState() => _LicenceDetailsScreenState();
}

class _LicenceDetailsScreenState extends State<LicenceDetailsScreen> {
  final TextEditingController licenceNumberController = TextEditingController();

  final TextEditingController licencetypeController = TextEditingController();

  final TextEditingController licenceUploadController = TextEditingController();

  final TextEditingController fileController = TextEditingController();

  final TextEditingController pleaseSelectController = TextEditingController();

  final TextEditingController explainingToYesController =
      TextEditingController();

  final TextEditingController criminalSelectionController =
      TextEditingController();

  final TextEditingController pleaseSelect2Controller = TextEditingController();

  final TextEditingController detailsController = TextEditingController();

  final TextEditingController cardControlller = TextEditingController();

   bool isSelect = false;
   bool isSelect1 = false;


   String selectedValue = 'Yes';
  
   String selectedValue1 = 'NO';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kSizedBox,
                  CustomText(
                    titleText: 'Licence  Details',
                    fontSize: 24,
                  ),
                  kSizedBox,
                  CustomTextField(
                      controller: licenceNumberController,
                      hintText: 'Drivers Licence Number*'),
                  kSizedBox,
                  CustomTextField(
                      controller: licencetypeController,
                      hintText: 'Driver Licence Type *'),
                  kSizedBox,
                  CustomTextField(
                    controller: licenceUploadController,
                    hintText: 'Drivers Licence  Upload *',
                    iconButton: const Icon(Icons.info),
                  ),
                  kSizedBox,
                  CustomContainer(
                    onTap: () {},
                    title: 'Choose File *',
                    icon: Icons.add_circle,
                  ),
                  kSizedBox20,
                  isSelect
                      ? Card(
                          child: Column(
                            children: [
                              RadioListTile(
                                title: CustomText(titleText: 'Yes'),
                                  value: "Yes",
                                  groupValue: selectedValue,
                                  onChanged: (value){
                                    setState(() {
                                      selectedValue = value.toString();
                                    });
                                  }),
                              RadioListTile(
                                title: CustomText(titleText: 'No'),
                                  value: "No",
                                  groupValue: selectedValue,
                                  onChanged: (value){
                                    setState(() {
                                      print(value);
                                      selectedValue = value.toString();
                                      
                                    });
                                  })
                            ],
                          ),
                        )
                      : CustomContainer(
                          title: 'Please Select ',
                          onTap: () {
                            setState(() {
                              isSelect = true;
                            });
                          },
                        ),
                  
                 
                  kSizedBox,
                  CustomTextField(
                    controller: explainingToYesController,
                    hintText: 'If you please Explain *',
                  ),
                  kSizedBox20,
                  CustomText(titleText: 'Do you have Criminal convictions *'),
                  kSizedBox20,
                  CustomContainer(
                          title: 'Please Select ',
                          onTap: () {
                            setState(() {
                              isSelect1 = true;
                            });
                          },
                        ),
                  kSizedBox,
                  CustomTextField(
                      controller: detailsController,
                      hintText: 'If yes provide details *'),
                  kSizedBox,
                  CustomTextField(
                    controller: cardControlller,
                    hintText: 'White Card number',
                  ),
                  kSizedBox,
                  Row(
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
                                  builder: (context) => InsuranceScreen(),
                                ),
                              ),
                          icon: Icons.arrow_forward),
                    ],
                  ),
                  kSizedBox,
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
      ),
    );
  }
}
