// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unnecessary_string_escapes, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TEXT EDITING CONTROLLER TO SEE WHAT USER HAS TYPED
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



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
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "PASSWORD",
                                  hintText: "Password",
                                  labelStyle: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blueAccent,
                                ),
                                  suffixIcon: Icon(Icons.lock),
                                  ),                                  
                              obscureText: true,
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
                                onPressed: () {
                                  Navigator.pushNamed(context, '/Home');
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
