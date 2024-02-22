// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_typing_uninitialized_variables, unused_import, prefer_adjacent_string_concatenation

//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class DashboardPage extends StatefulWidget {
  final token;
  const DashboardPage({@required this.token, super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late String user;
  late Map<String, dynamic> jwtDecodedToken;

  @override
  void initState() {
    super.initState();
    jwtDecodedToken = JwtDecoder.decode(widget.token);

    String firstName = jwtDecodedToken['firstName'] ?? '';
    String middleName = jwtDecodedToken['middleName'] ?? '';
    String surname = jwtDecodedToken['surname'] ?? '';
    int age = jwtDecodedToken['age'] ?? '';
    String gender = jwtDecodedToken['gender'] ?? '';
    String email = jwtDecodedToken['email'] ?? '';
    int contact = jwtDecodedToken['contact'] ?? '';
    int idNumber = jwtDecodedToken['idNumber'] ?? '';
    String position = jwtDecodedToken['position'] ?? '';

    user =
        '$firstName $middleName $surname $age $gender $email $contact $idNumber $position';
  }

  bool mousecursor = false;
  bool mousecursor1 = false;
  bool mousecursor2 = false;
  bool isHovered = false;

  Widget profileLogo(){
    String gender = jwtDecodedToken['gender'] ?? '';
    if( gender.toLowerCase() == 'male'){
      return Image.asset(
        'assets/images/MaleProfileLogo.jpeg',
        width: 100,
        height: 100,);
    }
    else{
      return Image.asset(
        'assets/images/FemaleProfileLogo.jpeg',
        width: 100,
        height: 100,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.grey[300]),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(20, 20),
                    ),
                    color: Colors.lightBlue[50]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 120.0, vertical: 8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 530,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue[50],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 130,
                                  width: 150,
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/companylogo.jpeg',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 25.0,
                                  ),
                                  child: Container(
                                    height: 130,
                                    decoration: BoxDecoration(
                                        color: Colors.lightBlue[50]),
                                    child: Text(
                                      'Bakaki Matatu',
                                      style: GoogleFonts.balooTamma2(
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue[400]),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            decoration: BoxDecoration(color: Colors.lightBlue[50]),
                            child: Row(
                              children: [

                                //driver page button
                                Container(
                                  width: 150,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue[50]),
                                  child: MouseRegion(
                                    onEnter: (_) {
                                      setState(() {
                                        mousecursor = true;
                                      });
                                    },
                                    onExit: (_) {
                                      setState(() {
                                        mousecursor = false;
                                      });
                                    },
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/Driver');
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.lightBlue[50]
                                      ),
                                      child: Text(
                                        'DRIVER',
                                        style: GoogleFonts.gentiumPlus(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: mousecursor
                                              ? Colors.yellow[700]
                                              : Colors.blue[400],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 30),

                                //conductor page button
                                Container(
                                  width: 200,
                                  height: 70,
                                  decoration:
                                      BoxDecoration(color: Colors.lightBlue[50]),
                                      child: MouseRegion(
                                    onEnter: (_) {
                                      setState(() {
                                        mousecursor1 = true;
                                      });
                                    },
                                    onExit: (_) {
                                      setState(() {
                                        mousecursor1 = false;
                                      });
                                    },
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/Driver');
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.lightBlue[50]
                                      ),
                                      child: Text(
                                        'CONDUCTOR',
                                        style: GoogleFonts.gentiumPlus(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: mousecursor1
                                              ? Colors.yellow[700]
                                              : Colors.blue[400],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 50),
                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/Login');
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue[50]?? Colors.lightBlue.shade50),
                                  ), child: Icon(
                                    Icons.logout_rounded,
                                    size: 50,
                                    color: Colors.black,
                                  )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              //display users profile details
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 900,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.yellow[100],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.yellow[100]
                            ),
                            child: Center(
                              child: Text(
                                'PROFILE',
                                style: GoogleFonts.autourOne(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow
                                     ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 800, 
                                  width: double.infinity,                               
                                  decoration: BoxDecoration(                                    
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      colors: [Colors.blue, Colors.yellow],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight)
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5.0, top: 5.0,right: 5.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 150,
                                          decoration: BoxDecoration(
                                            color: Colors.white
                                          ),
                                          child: Center(
                                            child: profileLogo()),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(bottom: 5.0,left: 5.0,right: 5.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.brown
                                            ),
                                            child: Row(
                                              children: [

                                                //Shows data of the left row that includes first name, surname,email,idnumber and position
                                                Container(
                                                  width: 565,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      //First Name
                                                      Container(
                                                        height: 100,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 3.0),
                                                              child: Text(
                                                                'FIRST name:',
                                                                style: GoogleFonts.notoSansJavanese(
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.black87),
                                                              ),
                                                            ),
                                                            SizedBox(height: 5),
                                                            Text(
                                                              '${jwtDecodedToken['firstName'] ?? ''}',
                                                              style: GoogleFonts.notoSansJavanese(
                                                                fontSize: 42,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.grey),
                                                            ),
                                                          ],
                                                        ),                                                        
                                                      ),

                                                      SizedBox(height: 20),

                                                      //surname or last name
                                                      Container(
                                                        height: 100,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 3.0),
                                                              child: Text(
                                                                'Last name:',
                                                                style: GoogleFonts.notoSansJavanese(
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.black87),
                                                              ),
                                                            ),
                                                            SizedBox(height: 5),
                                                            Text(
                                                              '${jwtDecodedToken['surname'] ?? ''}',
                                                              style: GoogleFonts.notoSansJavanese(
                                                                fontSize: 42,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.grey),
                                                            ),
                                                          ],
                                                        ),                                                        
                                                      ),

                                                       SizedBox(height: 20),

                                                      //email address
                                                      Container(
                                                        height: 100,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 3.0),
                                                              child: Text(
                                                                'EMAIL:',
                                                                style: GoogleFonts.notoSansJavanese(
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.black87),
                                                              ),
                                                            ),
                                                            SizedBox(height: 5),
                                                            Text(
                                                              '${jwtDecodedToken['email'] ?? ''}',
                                                              style: GoogleFonts.notoSansJavanese(
                                                                fontSize: 25,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.grey),
                                                            ),
                                                          ],
                                                        ),                                                        
                                                      ),

                                                       SizedBox(height: 20),

                                                      //ID number
                                                      Container(
                                                        height: 100,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 3.0),
                                                              child: Text(
                                                                'ID Number:',
                                                                style: GoogleFonts.notoSansJavanese(
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.black87),
                                                              ),
                                                            ),
                                                            SizedBox(height: 5),
                                                            Text(
                                                              '${jwtDecodedToken['idNumber'] ?? ''}',
                                                              style: GoogleFonts.notoSansJavanese(
                                                                fontSize: 42,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.grey),
                                                            ),
                                                          ],
                                                        ),                                                        
                                                      ),

                                                       SizedBox(height: 20),

                                                      //position
                                                      Container(
                                                        height: 100,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 3.0),
                                                              child: Text(
                                                                'Position:',
                                                                style: GoogleFonts.notoSansJavanese(
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.black87),
                                                              ),
                                                            ),
                                                            SizedBox(height: 5),
                                                            Text(
                                                              '${jwtDecodedToken['position'] ?? ''}',
                                                              style: GoogleFonts.notoSansJavanese(
                                                                fontSize: 42,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.grey),
                                                            ),
                                                          ],
                                                        ),                                                        
                                                      ),
                                                      
                                                    ],
                                                  ),
                                                ),
                                                
                                                //Shows data of the right row that includes middle name,gender,age,and contact
                                                Container(
                                                  width: 565,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white
                                                  ),
                                                  child: Column(
                                                    children: [                                                       
                                                      //middlename
                                                      Container(
                                                        height: 100,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 3.0),
                                                              child: Text(
                                                                'Middle name:',
                                                                style: GoogleFonts.notoSansJavanese(
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.black87),
                                                              ),
                                                            ),
                                                            SizedBox(height: 5),
                                                            Text(
                                                              '${jwtDecodedToken['middleName'] ?? ''}',
                                                              style: GoogleFonts.notoSansJavanese(
                                                                fontSize: 42,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.grey),
                                                            ),
                                                          ],
                                                        ),                                                        
                                                      ),

                                                      SizedBox(height: 20),

                                                      //Age
                                                      Container(
                                                        height: 100,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 3.0),
                                                              child: Text(
                                                                'AGE:',
                                                                style: GoogleFonts.notoSansJavanese(
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.black87),
                                                              ),
                                                            ),
                                                            SizedBox(height: 5),
                                                            Text(
                                                              '${jwtDecodedToken['age'] ?? ''}',
                                                              style: GoogleFonts.notoSansJavanese(
                                                                fontSize: 42,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.grey),
                                                            ),
                                                          ],
                                                        ),                                                        
                                                      ),

                                                      SizedBox(height: 20),

                                                      //Contact
                                                      Container(
                                                        height: 100,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 3.0),
                                                              child: Text(
                                                                'CONTACT:',
                                                                style: GoogleFonts.notoSansJavanese(
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.black87),
                                                              ),
                                                            ),
                                                            SizedBox(height: 5),
                                                            Text(
                                                              '254'+'${jwtDecodedToken['contact'] ?? ''}',
                                                              style: GoogleFonts.notoSansJavanese(
                                                                fontSize: 42,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.grey),
                                                            ),
                                                          ],
                                                        ),                                                        
                                                      ),

                                                      SizedBox(height: 20),

                                                      //Gender
                                                      Container(
                                                        height: 100,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 3.0),
                                                              child: Text(
                                                                'GENDER',
                                                                style: GoogleFonts.notoSansJavanese(
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.black87),
                                                              ),
                                                            ),
                                                            SizedBox(height: 5),
                                                            Text(
                                                              '${jwtDecodedToken['gender'] ?? ''}',
                                                              style: GoogleFonts.notoSansJavanese(
                                                                fontSize: 42,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.grey),
                                                            ),
                                                          ],
                                                        ),                                                        
                                                      ),

                                                      SizedBox(height: 20),
                                                      
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ))
                                    ],
                                  ),
                                ), 

                                SizedBox(height: 10),                       
                              
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      onPressed: (){},
                                      child: Text(
                                        'Edit profile',
                                        style: GoogleFonts.gentiumPlus(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),                      
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              //bottom sponsor container
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
