// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ResetpasswordPage extends StatefulWidget {
  const ResetpasswordPage({super.key});

  @override
  State<ResetpasswordPage> createState() => _ResetpasswordPageState();
}

class _ResetpasswordPageState extends State<ResetpasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Container(
            height: 400,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),



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
                  SizedBox(height: 20),

                  //guide text/Instruction for user to input their email
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Please fill in the field below with your correct Email or Phone Number",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  //User input registered email for system to check if they are registered before proceeding to the next stage
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Email/Phone Number",
                            hintText: "Enter your Email / Phone number",
                            labelStyle: TextStyle(
                              fontSize: 13,
                              color: Colors.blueAccent,
                            ),
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  //RESET BUTTON that when clicked, authenticate if user email/phone number exist and if exist, proceeds to the reset password page
                  ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/ChangePassword');
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
                                  'RESET',
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
        ));
  }
}
