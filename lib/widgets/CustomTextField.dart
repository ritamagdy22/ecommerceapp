import 'package:ecommerceapp/styles/app%20colors/appcolor.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  // variables for all form
  String hintText;
  bool isPassword;
  TextEditingController controller;
  String? Function(String?)? validator;
  TextInputType type;

  CustomTextField(
      {required this.type,
      required this.controller,
      required this.hintText,
      required this.validator,
      this.isPassword = true});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      disabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      focusedErrorBorder:

          OutlineInputBorder(borderRadius: BorderRadius.circular(12)


          ),
          fillColor: AppColors.WhiteColor,
          filled:  true,
          // variable not contsatnt that why we mad it as a string
          hintText: hintText,
    ),

        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: AppColors.BlackColor

        ),
// needed parameters for text form field
        controller: controller,
        validator: validator,
        keyboardType: type,
      // for the hidden password to make password as dots
      obscureText: isPassword,


    );



  }
}
