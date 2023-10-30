import 'package:flutter/material.dart';

class ConductorPage extends StatefulWidget {
  const ConductorPage({super.key});

  @override
  State<ConductorPage> createState() => _ConductorPageState();
}

class _ConductorPageState extends State<ConductorPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 232, 245),

      //body of the driver page
      body: Column(
        children: [
          Container(
            height: 230,
            width: double.infinity,            
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                right:Radius.circular(10), 
                left: Radius.circular(10)),
            ),
           child: Align(
            alignment: Alignment.centerLeft,
             child: CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 180,
               child: ClipOval(
                    child: Image.asset(
                      'assets/images/MaleProfileLogo.jpeg',                                        
                      width: 220, 
                      height: 220,
                    ),
                  ),
             ),
           ),
            )
          
        ],
      ),
    );
  }
}