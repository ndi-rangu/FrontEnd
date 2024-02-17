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
                      height: 800,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 0),
                                  blurRadius: 10
                                )],
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.elliptical(40, 40), 
                                top: Radius.elliptical(10, 10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                                  child: Text(
                                    'PROFILE',
                                    style: GoogleFonts.autourOne(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                  ),
                                ),
                                
                                Icon(
                                  Icons.person_rounded,
                                  size: 50,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10),                         

                          //first and middle name 
                          Column(
                            children: [
                              Container(
                                height: 125,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1.5),
                                blurRadius: 4,
                                spreadRadius: 0
                              ),
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, -1.5),
                                blurRadius: 4,
                                spreadRadius: 0
                              )],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical:8.0),
                                      child: Container(
                                        height: 100,
                                        width: 600,
                                        decoration: BoxDecoration(
                                          color: Colors.white
                                        ),
                                        child: Center(
                                          child: Text(
                                            'First Name: ' + '${jwtDecodedToken['firstName'] ?? ''}',
                                            style: GoogleFonts.notoSansJavanese(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87,
                                            ),),
                                        ),
                                      ),                                      
                                    ),
                                    SizedBox( width: 50),
                              
                                    Container(
                                        height: 100,
                                        width: 600,
                                        decoration: BoxDecoration(
                                          color: Colors.white
                                        ),
                                        child: Center(
                                          child: Text(
                                              'Middle Name: ${jwtDecodedToken['middleName'] ?? ''}',
                                              style: GoogleFonts.notoSansJavanese(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              color: Colors.black87
                                              ),),
                                        ),                                          
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          //surname(last name) and age
                          Column(
                            children: [
                              Container(
                                height: 125,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1.5),
                                blurRadius: 4,
                                spreadRadius: 0
                              ),
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, -1.5),
                                blurRadius: 4,
                                spreadRadius: 0
                              )],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical:8.0),
                                      child: Container(
                                        height: 100,
                                        width: 600,
                                        decoration: BoxDecoration(
                                          color: Colors.white
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Surname: ${jwtDecodedToken['surname'] ?? ''}',
                                            style: GoogleFonts.notoSansJavanese(
                                              fontSize: 20,
                                              fontWeight:FontWeight.bold,
                                              color: Colors.black87
                                            ),),
                                        ),
                                      ),                                      
                                    ),
                                    SizedBox( width: 50),
                              
                                    Container(
                                        height: 100,
                                        width: 600,
                                        decoration: BoxDecoration(
                                          color: Colors.white
                                        ),
                                        child: Center(
                                          child: Text(
                                              'Age: ${jwtDecodedToken['age'] ?? ''}',
                                              style: GoogleFonts.notoSansJavanese(
                                                fontSize: 20,
                                                fontWeight:FontWeight.bold,
                                              color: Colors.black87
                                              ),),
                                        ),                                          
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          
                          //Gender and email
                          Column(
                            children: [
                              Container(
                                height: 125,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1.5),
                                blurRadius: 4,
                                spreadRadius: 0
                              ),
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, -1.5),
                                blurRadius: 4,
                                spreadRadius: 0
                              )],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical:8.0),
                                      child: Container(
                                        height: 100,
                                        width: 600,
                                        decoration: BoxDecoration(
                                          color: Colors.white
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Gender: ${jwtDecodedToken['gender'] ?? ''}',
                                            style: GoogleFonts.notoSansJavanese(
                                              fontSize: 20,
                                              fontWeight:FontWeight.bold,
                                              color: Colors.black87
                                            ),),
                                        ),
                                      ),                                      
                                    ),
                                    SizedBox( width: 50),
                              
                                    Container(
                                        height: 100,
                                        width: 600,
                                        decoration: BoxDecoration(
                                          color: Colors.white
                                        ),
                                        child: Center(
                                          child: Text(
                                              'Email: ${jwtDecodedToken['email'] ?? ''}',
                                              style: GoogleFonts.notoSansJavanese(
                                                fontSize: 20,
                                                fontWeight:FontWeight.bold,
                                              color: Colors.black87
                                              ),),
                                        ),                                          
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          
                          //position
                          Column(
                            children: [
                              Container(
                                height: 125,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1.5),
                                blurRadius: 4,
                                spreadRadius: 0
                              ),
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, -1.5),
                                blurRadius: 4,
                                spreadRadius: 0
                              )],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical:8.0),
                                      child: Container(
                                        height: 100,
                                        width: 600,
                                        decoration: BoxDecoration(
                                          color: Colors.white
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Position: ${jwtDecodedToken['position'] ?? ''}',
                                            style: GoogleFonts.notoSansJavanese(
                                              fontSize: 20,
                                              fontWeight:FontWeight.bold,
                                              color: Colors.black87
                                            ),),
                                        ),
                                      ),                                      
                                    ),                                                                  
                                  ],
                                ),
                              ),
                            ],
                          ),                            
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
