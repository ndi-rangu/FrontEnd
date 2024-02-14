// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:website_development/Const/Hover.dart';

class IntroPage extends StatefulWidget {
  IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

   // locations for the users to locate the stages
   final String location1 = '106 Banana Stage, City Centre, Nairobi';
   final String location2 = 'Ruaka/Banana Junction/Tuskys Supermarket, Nairobi';
   final String location3 = 'Banana Terminus, Banana Hill';

   // function to launch Google Maps with a specific location
  Future<void> launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                  image: DecorationImage(
                          image: NetworkImage(
                            'https://live.staticflickr.com/4914/44423970670_a16de5b404_b.jpg'
                            ),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.9), // Specify your desired opacity here
                              BlendMode.srcOver, // You can change the BlendMode if needed
                              ),
                          ),                          
                  //color: Colors.brown, 
                  ),

                //Title

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(                        
                        color: Colors.white.withOpacity(0.5),
                        
                        ),
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
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                  BoxShadow(
                    color: Colors.yellow.shade100, // Shadow color
                    offset: Offset(0, 10), // Offset of the shadow
                    blurRadius: 5, // Spread of the shadow
                    spreadRadius: 2,
                  )
                ]),
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
                    SizedBox(height: 30),

                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlue.shade50, // Shadow color
                    offset: Offset(0, 10), // Offset of the shadow
                    blurRadius: 5, // Spread of the shadow
                    spreadRadius: 2,
                  )
                ]
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
                          SizedBox(height: 10),

                          //Nairobi stage location button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 210,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      //navigate to google maps
                                      launchUrl('https://www.google.com/maps/search/?api=1&query=$location1');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero, backgroundColor: null,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
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
                                    launchUrl('https://www.google.com/maps/search/?api=1&query=$location2');
                                    
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero, backgroundColor: null,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
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
                                    launchUrl('https://www.google.com/maps/search/?api=1&query=$location3');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero, backgroundColor: null,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
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
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: 500,
                            height: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.yellow,
                                width: 3.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                PieChart(
                                  PieChartData(
                                    sectionsSpace: 0,
                                    centerSpaceRadius: 130,
                                    sections: [
                                      //Driver stats
                                      PieChartSectionData(
                                          value: 60, color: Colors.red),

                                      //Conductor stats
                                      PieChartSectionData(
                                          value: 70, color: Colors.yellow),

                                      //Vehicle stats
                                      PieChartSectionData(
                                          value: 100, color: Colors.blue),

                                      //Driver stats
                                      PieChartSectionData(
                                          value: 20, color: Colors.orange),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 16,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Indicator(
                                        color: Colors.red,
                                        text: 'Driver Employeed',
                                      ),
                                      Indicator(
                                        color: Colors.yellow,
                                        text: 'Conductor Employeed',
                                      ),
                                      Indicator(
                                        color: Colors.blue,
                                        text: 'Vehicles in operation',
                                      ),
                                      Indicator(
                                        color: Colors.orange,
                                        text: 'Sacco Stats',
                                      ),
                                    ],
                                  ),
                                )
                              ],
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
                              )),
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

class Indicator extends StatelessWidget {
  final Color color;
  final String text;

  Indicator({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          color: color,
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: GoogleFonts.adventPro(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
