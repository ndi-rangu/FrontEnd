// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Changepwd extends StatefulWidget {
  const Changepwd({super.key});

  @override
  State<Changepwd> createState() => _ChangepwdState();
}

class _ChangepwdState extends State<Changepwd> {
  // TEXT EDITING CONTROLLER TO SEE WHAT USER HAS TYPED
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[400],
      body: Center(
        child: Container(
          height: 500,
          width: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),

          //Company logo
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 130,
                width: 150,
                child: Image(
                  image: AssetImage('assets/images/companylogo.jpeg'),
                ),
              ),
              SizedBox(height: 20),

              //Instructions for user
              Center(
                child: Text(
                  "Fill in the fields below",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),

              //New change password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: newpasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter new password",
                      labelText: "NEW PASSWORD",
                      labelStyle: TextStyle(
                        fontSize: 13,
                        color: Colors.blueAccent,
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              //Confirm new change password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: confirmpasswordController,
                    obscureText: true,
                    decoration: InputDecoration(                      
                      labelText: "CONFIRM NEW PASSWORD",
                      hintText: "Re-enter the new password",                      
                      labelStyle: TextStyle(                        
                        fontSize: 13,
                        color: Colors.blueAccent,
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              //Button to save changes
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                child: Container(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
