// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:url_launcher/url_launcher.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  bool mousecursor = false;
  bool mousecursor1 = false;
  bool mousecursor2 = false;
  bool isHovered = false;
  Color dark = Color(0x000000);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        width: double.infinity,
        height: 1000,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://live.staticflickr.com/4914/44423970670_a16de5b404_b.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white
                  .withOpacity(1), 
              BlendMode.srcOver, 
            ),
          ),
          
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black87),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image(
                            image: AssetImage(
                              'assets/images/companylogo.jpeg',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),

                      Text(
                        'BAKAKI MATATU Sacco',
                        style: GoogleFonts.notoSansImperialAramaic(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 500),

                      //HOME button
                      Container(
                        width: 110,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(0, 0),
                              blurRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.elliptical(20, 20),
                              right: Radius.elliptical(20, 20)),
                        ),
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
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Home');
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                mousecursor ? Colors.yellow : Colors.black54,
                              ),
                            ),
                            child: Text(
                              'HOME',
                              style: GoogleFonts.crushed(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color:
                                    mousecursor ? Colors.black : Colors.yellow,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),

                      //DRIVER button
                      Container(
                        width: 110,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(0, 0),
                              blurRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.elliptical(20, 20),
                              right: Radius.elliptical(20, 20)),
                        ),
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
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Driver');
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                mousecursor1 ? Colors.yellow : Colors.black87,
                              ),
                            ),
                            child: Text(
                              'DRIVER',
                              style: GoogleFonts.crushed(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color:
                                    mousecursor1 ? Colors.black : Colors.yellow,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),

                      //Conductor button
                      Container(
                        width: 115,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(0, 0),
                              blurRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.elliptical(20, 20),
                              right: Radius.elliptical(20, 20)),
                        ),
                        child: MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              mousecursor2 = true;
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              mousecursor2 = false;
                            });
                          },
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Conductor');
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                mousecursor2 ? Colors.yellow : Colors.black87,
                              ),
                            ),
                            child: Text(
                              'CONDUCTOR',
                              style: GoogleFonts.crushed(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color:
                                    mousecursor2 ? Colors.black : Colors.yellow,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 55),

              //Text descriptive
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          child: Image(image: 
                          AssetImage(
                              'assets/images/BakakiMatatu.jpg',
                            ),
                            fit: BoxFit.fill,
                            ),
                        ),
                      ),
                      SizedBox(width: 20),
                      MouseRegion(
                         onEnter: (_) {
                          setState(() {
                            isHovered = true;
                            });
                            },
                
                        onExit: (_) {
                          setState(() {
                            isHovered = false;
                            });
                            },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Column(
                            children: [
                              AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                width: isHovered? 980 : 980,
                                height: isHovered? 240 : 230,
                                margin: EdgeInsets.only(left: isHovered ? 20 : 0, top: isHovered ? 10: 0),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: isHovered? Colors.blue.shade900: Colors.yellow.shade100,
                                boxShadow: isHovered ? [BoxShadow(
                                    color: Colors.yellow, // Shadow color
                                    offset: Offset(0, 10), // Offset of the shadow
                                    blurRadius: 5, // Spread of the shadow
                                    spreadRadius: 2,
                                  )
                                ]: [],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "Welcome to the forefront of Bakaki Matatu Sacco! We take immense pride in being the number one Sacco that prioritizes our customers' needs above all else. At our core, we're dedicated to ensuring your journey is not just a ride but an experience. Our commitment to service excellence is unmatched, as we consistently go the extra mile to make sure you reach your destination safely, comfortably, and with a smile. Choose us for your transport needs, and discover why we're the preferred choice in the Matatu industry. Your satisfaction is our driving force!",
                                    style: GoogleFonts.acme(
                                      color: isHovered? Colors.yellow.shade100: Colors.blue.shade900,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w200,
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
                ),
              ),
              SizedBox(height: 30),

              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlue.shade50, // Shadow color
                    offset: Offset(0, 10), // Offset of the shadow
                    blurRadius: 5, // Spread of the shadow
                    spreadRadius: 2,
                  )
                ]),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: 210,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                //navigate to google maps
                                launchUrl(
                                    'https://www.google.com/maps/search/?api=1&query=$location1');
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
                              launchUrl(
                                  'https://www.google.com/maps/search/?api=1&query=$location2');
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
                                  Icon(Icons.location_on, color: Colors.black),
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
                              launchUrl(
                                  'https://www.google.com/maps/search/?api=1&query=$location3');
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
                                  Icon(Icons.location_on, color: Colors.black),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
        )
      ],
    );
  }
}

//   @override
//   Widget build(BuildContext context) => DefaultTabController(
//         length: 5,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Center(
//               child: Text(
//                 "Bakaki Matatu",
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               ),
//             ),
//             //backgroundColor: Colors.orange[100],
//             flexibleSpace: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.yellow.shade100, Colors.yellow],
//                   begin: Alignment.bottomRight,
//                   end: Alignment.topLeft,
//                 ),
//               ),
//             ),

//             //Tab controller
//             bottom: TabBar(
//               indicatorColor: Colors.deepPurple,
//               indicatorWeight: 5,
//               tabs: [
//                 //home
//                 Tab(
//                   icon: Icon(Icons.home,
//                   color: Colors.black,),
//                   child: Text(
//                     "Home",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 13,
//                       fontWeight: FontWeight.bold
//                     ),)
//                   ),

//                 //driver
//                 Tab(
//                   icon: Icon(Icons.person,
//                   color: Colors.black,),
//                   child: Text(
//                     "Driver",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 13,
//                       fontWeight: FontWeight.bold
//                     ),)
//                   ),

//                 //conductor
//                 Tab(
//                   icon: Icon(Icons.hail_rounded,
//                   color: Colors.black,),
//                   child: Text(
//                     "Conductor",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 13,
//                       fontWeight: FontWeight.bold
//                     ),)

//                 ),
//                 //Vehicles
//                 Tab(
//                   icon: Icon(Icons.drive_eta_rounded,
//                   color: Colors.black,),
//                   child: Text(
//                     "Vehicle",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 13,
//                       fontWeight: FontWeight.bold
//                     ),)
//                 ),

//                 //profile
//                 Tab(
//                   icon: Icon(Icons.account_circle_sharp,
//                   color: Colors.black,),
//                   child: Text(
//                     "Profile",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 13,
//                       fontWeight: FontWeight.bold
//                     ),)
//                 ),
//               ],
//             ),
//             //logout button on appBar
//             actions: [
//               IconButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/');
//                 },
//                 icon: Icon(
//                   Icons.logout_rounded,
//                   color: Colors.black,
//                 ),
//               ),
//             ],
//             leading: Builder(
//               builder: (context) => IconButton(
//                 icon: Icon(
//                   Icons.menu,
//                   color: Colors.black,
//                 ),
//                 onPressed: () {
//                   Scaffold.of(context).openDrawer();
//                 },
//               ),
//             ),
//           ),
//           drawer: Drawer(
//             child: ListView(
//               children: [
//                 //Company logo
//                 DrawerHeader(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/companylogo.jpeg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: ListTile(),
//                 ),

//                 // Home Tile
//                 ListTile(
//                   leading: Icon(Icons.home),
//                   title: Text(
//                     "Home",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   onTap: () {
//                     Navigator.pushNamed(context, '/Home');
//                   },
//                 ),

//                 //Drivers tile

//                 ListTile(
//                   leading: Icon(Icons.person),
//                   title: Text(
//                     "Driver",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   onTap: () {
//                     Navigator.pushNamed(context, '/Driver');
//                   },
//                 ),

//                 //Conductor tile
//                 ListTile(
//                   leading: Icon(Icons.hail_rounded),
//                   title: Text(
//                     "Conductor",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   onTap: () {
//                     Navigator.pushNamed(context, '/Conductor');
//                   },
//                 ),

//                 //Vehicles tile
//                 ListTile(
//                   leading: Icon(Icons.drive_eta_rounded),
//                   title: Text(
//                     "Vehicles",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   onTap: () {
//                     Navigator.pushNamed(context, '/Vehicle');
//                   },
//                 ),

//                 //Profile tile
//                 ListTile(
//                   leading: Icon(Icons.account_circle_sharp),
//                   title: Text(
//                     "Profile",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   onTap: () {
//                     Navigator.pushNamed(context, '/Home');
//                   },
//                 ),

//                 //logout tile
//                 ListTile(
//                   leading: Icon(Icons.logout),
//                   title: Text(
//                     "Logout",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   onTap: () {
//                     Navigator.pushNamed(context, '/');
//                   },
//                 ),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               IntroPage(),
//               DriverPage(),
//               ConductorPage(),
//               VehiclePage(),
//               ProfilePage(),
//             ]),
//         ),
//       );

//       //widget for Homepage builder

// }
