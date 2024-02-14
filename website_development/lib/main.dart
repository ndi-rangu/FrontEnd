// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:website_development/pages/authentication/changepwdpage.dart';
import 'package:website_development/pages/authentication/resetpasswordpage.dart';
import 'package:website_development/pages/users/Dashboard.dart';
import 'package:website_development/pages/users/conductorpage.dart';
import 'package:website_development/pages/users/driverpage.dart';
import 'package:website_development/pages/users/homepage.dart';
import 'package:website_development/pages/authentication/loginpage.dart';
import 'package:website_development/pages/authentication/registerpage.dart';

import 'package:website_development/pages/users/intropage.dart';
import 'package:website_development/pages/users/vehiclepage.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(token: prefs.getString('token'),));
}

class MyApp extends StatelessWidget {

  final token;
  const MyApp({
    @required this.token,
    Key? key,
  }):super(key: key);

  
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: token != null && !JwtDecoder.isExpired(token!)
          ? DashboardPage(token: token!) // Check if token is not null and not expired
          : LoginPage(), // Navigate to LoginPage if token is null or expired
      //(JwtDecoder.isExpired(token) == false)?DashboardPage(token: token):LoginPage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //  onGenerateRoute: (settings) {
      //   if (settings.name == '/Conductor') {
      //     final Map<String, dynamic>? arguments = settings.arguments as Map<String, dynamic>?;

      //     return MaterialPageRoute(
      //       builder: (context) => ConductorPage(token: arguments?['token']),
      //     );
      //   }
      //   // Handle other routes if needed
      //   return MaterialPageRoute(builder: (context) => LoginPage());
      // },
      routes: {        
        '/Home':(context) => HomePage(),
        '/Create Account':(context) => RegisterPage(),
        '/Driver':(context) => DriverPage(),
        '/Conductor': (context) => ConductorPage(),
        '/Vehicle':(context) => VehiclePage(),
        '/Register':(context) => RegisterPage(),
        '/ResetPassword':(context) => ResetpasswordPage(),
        '/Login':(context) => LoginPage(),
        '/ChangePassword':(context) => Changepwd(),
        '/Intropage':(context) => IntroPage(),
        //'/Dashboard':(context, {token}) => DashboardPage(token: userToken),
      },
    );
  }
}


