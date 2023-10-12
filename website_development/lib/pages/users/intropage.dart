// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:website_development/Const/Hover.dart';

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
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 1000,
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
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "WELCOME TO BAKAKI MATATU SACCO!",
                          style: GoogleFonts.adamina(
                            color: Colors.blue[400],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    //Text descriptive
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        decoration:
                            BoxDecoration(color: Colors.yellow.shade100),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Welcome to the forefront of Bakaki Matatu Sacco! We take immense pride in being the number one Sacco that prioritizes our customers' needs above all else. At our core, we're dedicated to ensuring your journey is not just a ride but an experience. Our commitment to service excellence is unmatched, as we consistently go the extra mile to make sure you reach your destination safely, comfortably, and with a smile. Choose us for your transport needs, and discover why we're the preferred choice in the Matatu industry. Your satisfaction is our driving force!",
                            style: GoogleFonts.acme(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Our Matatus ply along the Banana - Ruaka - Nairobi route and these are our main stages where we are stationed but of course you are welcomed to board our matatus on stages along these routes. In Nairobi, our stage if found inside the Globe Roundabout, at Ruaka we are located at the T- Junction stage and in Banana we are found in the main stage (Opposite Rubis petrol station)",
                              style: GoogleFonts.acme(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),

                          //Nairobi stage location button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 210,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      //navigate to google maps
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                      primary: null,
                                    ),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.yellow,
                                            Colors.yellow.shade100
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(Icons.location_on,
                                              color: Colors.black),
                                          SizedBox(width: 8),
                                          Text(
                                            "NAIROBI STAGE",
                                            style: TextStyle(
                                              color: Colors.grey[900],
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(width: 350),

                              //Ruaka stage location button
                              Container(
                                width: 210,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //navigate to google maps
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    primary: null,
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.yellow,
                                          Colors.yellow.shade100
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                    ),
                                    // child: Container(
                                    //   alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on,
                                            color: Colors.black),
                                        SizedBox(width: 8),
                                        Text(
                                          "RUAKA STAGE",
                                          style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              //),
                              SizedBox(width: 330),

                              //Banana stage location button
                              Container(
                                width: 220,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //navigate to google maps
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    primary: null,
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.yellow,
                                          Colors.yellow.shade100,
                                        ], // Define your gradient colors
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                    ),
                                    // child: Container(
                                    //   alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on,
                                            color: Colors.black),
                                        SizedBox(width: 8),
                                        Text(
                                          "BANANA STAGE",
                                          style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              //)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),


                    //Statistic pie chart animation
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:20),
                          child: Container(
                            width: 500,
                            height: 500,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.yellow,
                                width: 3.0,
                              )
                            ),
                          ),                          
                        ),
                        SizedBox(width: 250),

                        //Statistic graph chart animation

                        Container(
                            width: 500,
                            height: 500,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.yellow,
                                width: 3.0,
                              )
                            ),
                          ),                
                      ],
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
