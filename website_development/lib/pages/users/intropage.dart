// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                ), 
      
                //Title
                
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 700,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: Text("WELCOME TO BAKAKI MATATU SACCO!",
                          style: GoogleFonts.adamina(
                            color: Colors.blue[400],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                      SizedBox(height: 50),
      
                      
                      //Text descriptive
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade100
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:10),
                            child: Text(
                              "Welcome to the forefront of Bakaki Matatu Sacco! We take immense pride in being the number one Sacco that prioritizes our customers' needs above all else. At our core, we're dedicated to ensuring your journey is not just a ride but an experience. Our commitment to service excellence is unmatched, as we consistently go the extra mile to make sure you reach your destination safely, comfortably, and with a smile. Choose us for your transport needs, and discover why we're the preferred choice in the Matatu industry. Your satisfaction is our driving force!",
                              style: GoogleFonts.acme(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w200
                              ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                                                  
                ),
            ),
          ],
        ),
      ),        
    );
  }
}
