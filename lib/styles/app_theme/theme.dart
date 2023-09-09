import 'package:ecommerceapp/styles/app%20colors/appcolor.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.WhiteColor,
      textTheme: TextTheme(
          titleSmall: TextStyle(
              fontSize: 18,
              color: AppColors.BlackColor.withOpacity(0.7),
              fontWeight: FontWeight.w300),
          titleMedium: const TextStyle(
              fontSize: 24,
              color: AppColors.WhiteColor,
              fontWeight: FontWeight.w600),
          titleLarge: const TextStyle(
              fontSize: 16,
              color: AppColors.WhiteColor,
              fontWeight: FontWeight.w300)));
}
