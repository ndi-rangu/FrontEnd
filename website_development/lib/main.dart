// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:website_development/pages/authentication/resetpasswordpage.dart';
import 'package:website_development/pages/users/conductorpage.dart';
import 'package:website_development/pages/users/driverpage.dart';
import 'package:website_development/pages/users/homepage.dart';
import 'package:website_development/pages/authentication/loginpage.dart';
import 'package:website_development/pages/authentication/registerpage.dart';
import 'package:website_development/pages/users/vehiclepage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        
        '/Home':(context) => HomePage(),
        '/Create Account':(context) => RegisterPage(),
        '/Driver':(context) => DriverPage(),
        '/Conductor':(context) => ConductorPage(),
        '/Vehicle':(context) => VehiclePage(),
        '/Register':(context) => RegisterPage(),
        '/ResetPassword':(context) => ResetpasswordPage(),

      },
    );
  }
}


