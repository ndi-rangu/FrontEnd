// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // TEXT EDITING CONTROLLER TO SEE WHAT USER HAS TYPED
  TextEditingController firstnameController = TextEditingController();
  TextEditingController middlenameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

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

          //
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      //height: 500,
                      width: 500,
                      decoration: BoxDecoration(
                        color: Colors.white,
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

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Please fill in the details required below.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),

                            SizedBox(height: 20),

                            //First name textfield
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  controller: firstnameController,
                                  decoration: InputDecoration(
                                    labelText: "FIRST NAME",
                                    hintText: 'First name',
                                    border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                            //Middle name textfield
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  controller: middlenameController,
                                  decoration: InputDecoration(
                                    labelText: "MIDDLE NAME",
                                    hintText: 'Middle name',
                                    border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                            //Last name textfield
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  controller: lastnameController,
                                  decoration: InputDecoration(
                                    labelText: "SURNAME",
                                    hintText: 'last name',
                                    border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                            //Gender textfield

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  controller: genderController,
                                  decoration: InputDecoration(
                                    labelText: "GENDER",
                                    hintText: 'Gender',
                                    border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blueAccent,
                                    ),
                                    suffixIcon: Icon(Icons.person),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                            //Contact textfield
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  controller: contactController,
                                  decoration: InputDecoration(
                                    labelText: "CONTACT",
                                    hintText: 'Contact',
                                    border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blueAccent,
                                    ),
                                    suffixIcon: Icon(Icons.contact_phone),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                            //Email textfield
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    labelText: "EMAIL",
                                    hintText: 'Email',
                                    border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blueAccent,
                                    ),
                                    suffixIcon: Icon(Icons.email_rounded),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                            //New Password textfield
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  controller: newpasswordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: "NEW PASSWORD",
                                    hintText: 'Enter new password',
                                    border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blueAccent,
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: Icon(Icons.remove_red_eye),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                            //Confirm password
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  controller: confirmpasswordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: "CONFIRM PASSWORD",
                                    hintText: 'Confirm password',
                                    border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blueAccent,
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: Icon(Icons.remove_red_eye),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                            //Register Button
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 20),
                                decoration: BoxDecoration(
                                  //color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  'REGISTER',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
