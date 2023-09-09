import 'dart:async';

import 'package:ecommerceapp/ui/registeration_screen/registeration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const routename="SplashScreen";

  @override
  Widget build(BuildContext context) {

Timer(Duration(seconds: 3), () {
  Navigator.of(context).pushNamed(RegisterationScreen.routename);

});

return Scaffold(

  body: Image.asset('assets/images/Splash_Screen.png',
  height: double.infinity,
    width: double.infinity,
    fit: BoxFit.fill,
  ),
);

  }
}
