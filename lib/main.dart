import 'package:ecommerceapp/ui/registeration_screen/registeration_screen.dart';
import 'package:ecommerceapp/ui/splash_screen/splash_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routename,
routes: {
        SplashScreen.routename:(context)=>SplashScreen(),
  RegisterationScreen.routename:(context)=>RegisterationScreen()


},

    );
  }
}