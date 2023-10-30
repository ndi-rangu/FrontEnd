// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DriverPage extends StatefulWidget {
  const DriverPage({super.key});

  @override
  State<DriverPage> createState() => _DriverPageState();
}

class _DriverPageState extends State<DriverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 232, 245),

      //body of the driver page
      body: Center(
        child: Column(
          children: [
            Container( 
              height: 230,
              width: double.infinity,            
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  right:Radius.circular(10), 
                  left: Radius.circular(10)),
                  boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 154, 189, 122), // Shadow color
                    offset: Offset(0, 10), // Offset of the shadow
                    blurRadius: 5, // Spread of the shadow
                    spreadRadius: 2,
                  ),
                  ],
              ),

             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(                  
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 21.0, vertical: 8.0),
                     child: Row( 
                       children: [
                         Align(
                          alignment: Alignment.centerLeft,                  
                           child: CircleAvatar(
                            backgroundColor: Colors.yellow,
                            radius: 100,
                             child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/FemaleProfileLogo.jpeg',                                        
                                    width: 180, 
                                    height: 180,
                                  ),
                                ),
                           ),
                         ),
                         SizedBox(width: 200),

                          Container( 
                          width: 900, 
                          height: 200,                          
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'WELCOME BACK DRIVER!  '
                              'Lets pick up from where you left off',
                              style: GoogleFonts.gafata(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
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
            )          
          ],
        ),
      ),
    );
  }
}