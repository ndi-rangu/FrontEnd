// // ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_field, await_only_futures, avoid_print, use_build_context_synchronously, prefer_final_fields

// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_field, await_only_futures, avoid_print, use_build_context_synchronously, prefer_final_fields

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:website_development/Backend/config.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // TEXT EDITING CONTROLLER TO SEE WHAT USER HAS TYPED

  TextEditingController firstnameController = TextEditingController();
  TextEditingController middlenameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();  
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController idNumberController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  bool _isNotValidate = false;
  bool _isNotValidate1 = false;
  bool _isNotValidate2 = false;
  bool _isNotValidate3 = false;
  bool _isNotValidate4 = false;
  bool _isNotValidate5 = false;
  bool _isNotValidate6 = false;
  bool _isNotValidate7 = false;
  bool _isNotValidate8 = false;
  bool _isNotValidate9 = false;
  bool _isNotValidate10 = false;
  bool _isNotValidate11 = false;
  bool _isPasswordVisible = false;
  bool _isPasswordVisible1 = false;

  void registerAccount() async {
    if (firstnameController.text.isNotEmpty &&
        middlenameController.text.isNotEmpty &&
        lastnameController.text.isNotEmpty &&
        ageController.text.isNotEmpty &&
        genderController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        contactController.text.isNotEmpty &&
        idNumberController.text.isNotEmpty &&
        positionController.text.isNotEmpty &&
        newpasswordController.text.isNotEmpty &&
        confirmpasswordController.text.isNotEmpty) {
      var regBody = {
        "firstName": firstnameController.text,
        "middleName": middlenameController.text,
        "surname": lastnameController.text,
        "age": ageController.text,
        "gender": genderController.text,
        "email": emailController.text,
        "contact": contactController.text,
        "idNumber": idNumberController.text,
        "position": positionController.text,
        "password": newpasswordController.text,
        "confirmPassword": confirmpasswordController.text
      };

      var response = await http.post(Uri.parse(registrationUrl),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody));

      var jsonResponse = jsonDecode(response.body);

      print(jsonResponse['status']);
      if (response.statusCode == 200) {
        Navigator.pushNamed(context, '/Login');
        print('Request successful');
      } else {
        print(
            'Registeration of account failed with because: ${jsonResponse['message']}');

        //display error message from backend to user
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.blue,
              title: Text('Error'),
              content: Text('Error: ${jsonResponse['message']}'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      }
    } else {
      setState(() {
        _isNotValidate1 = firstnameController.text.isEmpty;
        _isNotValidate2 = middlenameController.text.isEmpty;
        _isNotValidate3 = lastnameController.text.isEmpty;
        _isNotValidate4 = ageController.text.isEmpty;
        _isNotValidate5 = genderController.text.isEmpty;
        _isNotValidate6 = contactController.text.isEmpty;
        _isNotValidate7 = emailController.text.isEmpty;
        _isNotValidate8 = idNumberController.text.isEmpty;
        _isNotValidate9 = positionController.text.isEmpty;
        _isNotValidate10 = newpasswordController.text.isEmpty;
        _isNotValidate11 = confirmpasswordController.text.isEmpty;
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
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorText: _isNotValidate1
                                        ? "First name is required"
                                        : null,
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
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorText: _isNotValidate2
                                        ? "Middle name is required"
                                        : null,
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
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorText: _isNotValidate3
                                        ? "Surname is required"
                                        : null,
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

                            //Age textfield
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  controller: ageController,
                                  decoration: InputDecoration(
                                    labelText: "AGE",
                                    hintText: 'age',
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorText: _isNotValidate4
                                        ? "Age is required"
                                        : null,
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
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorText: _isNotValidate5
                                        ? "Gender is required"
                                        : null,
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
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorText: _isNotValidate6
                                        ? "Contact is required"
                                        : null,
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
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorText: _isNotValidate7
                                        ? "Email is required"
                                        : null,
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

                            //IDNUMBER textfield
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  controller: idNumberController,
                                  decoration: InputDecoration(
                                    labelText: "ID NUMBER",
                                    hintText: 'ID Number',
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorText: _isNotValidate8
                                        ? "ID number is required"
                                        : null,
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

                            //Position textfield
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  controller: positionController,
                                  decoration: InputDecoration(
                                    labelText: "POSITION",
                                    hintText: 'position',
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorText: _isNotValidate9
                                        ? "Your position is required"
                                        : null,
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
                                  obscureText: !_isPasswordVisible,
                                  decoration: InputDecoration(
                                    labelText: "NEW PASSWORD",
                                    hintText: 'Enter new password',
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorText: _isNotValidate10
                                        ? "Password is required"
                                        : null,
                                    border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blueAccent,
                                    ),
                                    prefixIcon: Icon(Icons.lock),
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
                                  obscureText: !_isPasswordVisible1,
                                  decoration: InputDecoration(
                                    labelText: "CONFIRM PASSWORD",
                                    hintText: 'Confirm password',
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorText: _isNotValidate11
                                        ? "This field is required"
                                        : null,
                                    border: OutlineInputBorder(),
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blueAccent,
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _isPasswordVisible1
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isPasswordVisible1 =
                                              !_isPasswordVisible1;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                            //Register Button
                            ElevatedButton(
                              onPressed: () async {
                                registerAccount();
                                //Navigator.pushNamed(context, '/Login');
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

