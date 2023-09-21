import 'package:ecommerceapp/styles/app%20colors/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerButton extends StatelessWidget {
 String title;
 Function()? onPressed;
  CustomerButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  64,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.WhiteColor,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)
          ),),
        onPressed: onPressed,
        child: Text(title, style: Theme.of(context).textTheme.bodyLarge,),

      ),
    );
  }
}
