// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:website_development/pages/users/conductorpage.dart';
import 'package:website_development/pages/users/driverpage.dart';
import 'package:website_development/pages/users/intropage.dart';
import 'package:website_development/pages/users/profilepage.dart';
import 'package:website_development/pages/users/vehiclepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "Bakaki Matatu",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            //backgroundColor: Colors.orange[100],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.yellow.shade100, Colors.yellow],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),

            //Tab controller
            bottom: TabBar(
              indicatorColor: Colors.deepPurple,
              indicatorWeight: 5,
              tabs: [
                //home
                Tab(
                  icon: Icon(Icons.home,
                  color: Colors.black,),
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),)
                  ),

                //driver
                Tab(
                  icon: Icon(Icons.person,
                  color: Colors.black,),
                  child: Text(
                    "Driver",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),)
                  ),

                //conductor
                Tab( 
                  icon: Icon(Icons.hail_rounded,
                  color: Colors.black,),
                  child: Text(
                    "Conductor",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),)
                  
                ),
                //Vehicles
                Tab(
                  icon: Icon(Icons.drive_eta_rounded,
                  color: Colors.black,),
                  child: Text(
                    "Vehicle",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),)
                ),

                //profile
                Tab(
                  icon: Icon(Icons.account_circle_sharp,
                  color: Colors.black,),                  
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),)
                ),
              ],
            ),
            //logout button on appBar
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(
                  Icons.logout_rounded,
                  color: Colors.black,
                ),
              ),
            ],
            leading: Builder(
              builder: (context) => IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                //Company logo
                DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/companylogo.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ListTile(),
                ),

                // Home Tile
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/Home');
                  },
                ),

                //Drivers tile

                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    "Driver",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/Driver');
                  },
                ),

                //Conductor tile
                ListTile(
                  leading: Icon(Icons.hail_rounded),
                  title: Text(
                    "Conductor",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/Conductor');
                  },
                ),

                //Vehicles tile
                ListTile(
                  leading: Icon(Icons.drive_eta_rounded),
                  title: Text(
                    "Vehicles",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/Vehicle');
                  },
                ),

                //Profile tile
                ListTile(
                  leading: Icon(Icons.account_circle_sharp),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/Home');
                  },
                ),

                //logout tile
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              IntroPage(),
              DriverPage(),
              ConductorPage(),
              VehiclePage(),
              ProfilePage(),
            ]),
        ),
      );

      //widget for Homepage builder
    
}
