// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unnecessary_string_escapes, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_field, avoid_print, use_build_context_synchronously, annotate_overrides

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:website_development/Backend/config.dart';
import 'package:website_development/pages/users/Dashboard.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TEXT EDITING CONTROLLER TO SEE WHAT USER HAS TYPED
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  
  bool _isNotValidate = false;
  bool _isPasswordVisible = false;
  late SharedPreferences prefs;

  void initState(){
    super.initState();
    initSharedPref();
  }


  void initSharedPref() async{
  prefs = await SharedPreferences.getInstance();
}


  void loginAccount () async {
  if( emailController.text.isNotEmpty &&
  passwordController.text.isNotEmpty){

    var reqBody = {
      "email": emailController.text,
      "password": passwordController.text
    };

    var response = await http.post(Uri.parse(loginUrl),
          headers: {"Content-Type":"application/json"},
          body: jsonEncode(reqBody)
          
      );

      var jsonResponse = jsonDecode(response.body);

      print(jsonResponse['status']);                
       if(response.statusCode == 200){
         var userToken = jsonResponse['token'];
         prefs.setString('token', userToken);
        print('Received user token: $userToken');        
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardPage(token: userToken)));
        // Navigator.pushNamed(context, '/Dashboard', arguments: {token: userToken});


       }else{
         print('Login failed: ${jsonResponse['message']}');
         //display error messages
         showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.lightBlue[300],
              title: Center(child: Text('Error', style: TextStyle( color: Colors.white),)),
              content: Text('Failed: ${jsonResponse['message']}', style: TextStyle( color: Colors.white),),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),                  
                  child: Text('Close', style: TextStyle( color: Colors.black),),
                ),
              ],
            );
          },
        );
       }
    
  }else {
      setState(() {
        _isNotValidate = false;
      });
    }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image(
            image: AssetImage(
              'assets/images/BackgroundImage1.jpg',
            ),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),

                  //Inside the body of the container
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Logo of the company
                        Container(
                          height: 130,
                          width: 150,
                          child: Image(
                            image: AssetImage(
                              'assets/images/companylogo.jpeg',
                            ),
                          ),
                        ),

                        //welcoming users to the website
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WELCOME TO BAKAKI MATATU SACCO, KINDLY LOGIN',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        //Email textfield
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                            ),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "USERNAME",
                                hintText: "Email/Phone number",
                                errorStyle: TextStyle(
                                      color: Colors.red
                                    ),
                                    errorText: _isNotValidate? "Enter your Email" : null,
                                labelStyle: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blueAccent,
                                ),
                                suffixIcon: Icon(Icons.email_rounded),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        // Password textfield
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                            ),
                            child: TextField(
                              controller: passwordController,
                              obscureText: !_isPasswordVisible,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "PASSWORD",
                                  hintText: "Password",
                                  errorStyle: TextStyle(
                                      color: Colors.red
                                    ),
                                    errorText: _isNotValidate? "Enter your Password" : null,
                                  labelStyle: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blueAccent,
                                ),                                
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _isPasswordVisible
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isPasswordVisible =
                                              !_isPasswordVisible;
                                        });
                                      },
                                    ),
                                  ),                                
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        //Home Page button

                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () async {
                                  loginAccount();                                  
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepPurple,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 20),
                                  decoration: BoxDecoration(                                    
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text('SIGN IN',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),

                        //Reset password Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/ResetPassword');
                              },
                              style: TextButton.styleFrom(
                                //Change font size and weight
                                foregroundColor: Colors.blue, textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                //Set the padding on all sides to 20px
                                padding: const EdgeInsets.all(5.0),
                              ),
                              child: Text('Forgot password?'),
                            ),

                            SizedBox(
                              width: 69,
                            ),
                            Text(
                              'Want to become a member? ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //Register user button
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Register');
                              },
                              style: TextButton.styleFrom(
                                //Change font size and weight
                                foregroundColor: Colors.blue, textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                //Set the padding on all sides to 20px
                                padding: const EdgeInsets.all(5.0),
                              ),
                              child: Text('Sign up!'),
                            ),
                          ],
                        ),

                        //Forgot Password Button
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
