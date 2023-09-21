import 'package:ecommerceapp/widgets/CustomTextField.dart';
import 'package:ecommerceapp/widgets/Form_Label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterationScreen extends StatelessWidget {

  static const routename ="RegisterationScreen";

  TextEditingController nameController = TextEditingController();
      TextEditingController PhoneController = TextEditingController();
  TextEditingController EmailController  = TextEditingController();
      TextEditingController PasswordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();


  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 60,
        ),
      Image.asset("assets/images/route.png",
      height: 71,
      width: 237,),
        Expanded(child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FormLabel(label: "First name "),
                  SizedBox(height: 10,),

                  CustomTextField(
                      type: TextInputType.name,
                      controller: nameController,
                      hintText: "Enter your First name",
                      validator: (text){
                        //trim() is a method used to remove leading and trailing whitespace
                        // (spaces, tabs, newlines, etc.) from a string.
                        if(text == null || text.trim().isEmpty)
                          {
                           return "Please Enter your name";
                          }else return null;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(padding: EdgeInsets.all(7)),
                  FormLabel(label: "Enter your phone number "),
                  SizedBox(height: 10,),



                  CustomTextField(
                      type: TextInputType.phone,
                      controller: nameController,
                      hintText: "Enter your Phone number",
                      validator: (text){
                        //trim() is a method used to remove leading and trailing whitespace
                        // (spaces, tabs, newlines, etc.) from a string.
                        if(text == null || text.trim().isEmpty)
                        {
                          return "Please Enter your phone number";
                        }

                        if(text.trim().length<10){
                          return"phone number should be atleast 10 numbers";
                        }

                        else return null;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(padding: EdgeInsets.all(7)),
                  FormLabel(label: "Enter your Email address "),
                  SizedBox(height: 10,),



                  CustomTextField(
                      type: TextInputType.emailAddress,
                      controller: EmailController,
                      hintText: "Enter your Email address",
                      validator: (text){
                        //trim() is a method used to remove leading and trailing whitespace
                        // (spaces, tabs, newlines, etc.) from a string.
                        if(text == null || text.trim().isEmpty)
                        {
                          return "Please Enter your Email here";
                        }
                        var emailValid =   RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(text);
                        if(!emailValid){
                          return ' Your email is not valid';
                        }
                        else return null;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(padding: EdgeInsets.all(7)),
                  FormLabel(label: "Enter your password "),
                  SizedBox(height: 10,),




                  CustomTextField(
                      type: TextInputType.visiblePassword,
                      controller: PasswordController,
                      hintText: "Enter your Password",
                      validator: (text){
                        //trim() is a method used to remove leading and trailing whitespace
                        // (spaces, tabs, newlines, etc.) from a string.
                        if(text == null || text.trim().isEmpty)
                        {
                          return "Please Enter your name";
                        }
                        if(text== null || text.trim().isEmpty){
                          return " Please enter your password";
                        }
                        if(text.length<6){
                          return "Password must be more than 6 ";
                        }
                        else return null;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(padding: EdgeInsets.all(7)),
                  FormLabel(label: "Enter your confirmation password  "),
                  SizedBox(height: 10,),



                  CustomTextField(
                      type: TextInputType.visiblePassword,
                      controller: nameController,
                      hintText: "Enter Password Confirmation",
                      validator: (text){
                        //trim() is a method used to remove leading and trailing whitespace
                        // (spaces, tabs, newlines, etc.) from a string.
                        if(text == null || text.trim().isEmpty)
                        {
                          return "Please re-Enter your password";
                        }
                        if(PasswordController.text != text){
                          return "Password dosen't match";
                        }

                        else return null;
                      }),




                ],
              ),
            ),
          ),

        ))
      ],

      ),
    );
  }
}
