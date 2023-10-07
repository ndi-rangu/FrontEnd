// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
              "Website Development",
            ),
          ),
          
          
          actions: [IconButton(onPressed: (){
            Navigator.pushNamed(context, '/Login');
          }, icon: Icon(Icons.logout)),],
          
          backgroundColor: Colors.lightBlue,
        
        ),
        
        //drawer
        drawer: Drawer(
          backgroundColor: Colors.grey,
          child: ListView(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  size: 48,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                  ),
                  ),

                  // tiles inside the drawer

                  //home list tile
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("HOME"),
                    onTap: (){
                      //pop drawer first
                      Navigator.pop(context);

                      //navigate user back to home page
                      Navigator.pushNamed(context, '/Driver');

                       

                    }, 
                  ),

                  //setting list tile
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    //onTap: (){
                      //pop drawer first
                      //Navigator.pop(context);

                      //navigate user back to home page
                      //Navigator.pushNamed(context, '/Driver');
                    //}, 
                  ),
                  
                  //about list tile
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text("ABOUT"),
                    //onTap: (){
                      //pop drawer first
                     // Navigator.pop(context);

                      //navigate user back to home page
                     // Navigator.pushNamed(context, '/Driver');
                    //}, 
                  ),

                  //report list tile
                  ListTile(
                    leading: Icon(Icons.report),
                    title: Text("Report"),
                    //onTap: (){
                      //pop drawer first
                      //Navigator.pop(context);

                      //navigate user back to home page
                     // Navigator.pushNamed(context, '/Driver');
                    //}, 
                  ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          //scrollDirection: Axis.horizontal, 
          children: [
            Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.red
            ),
          ),
          Expanded(flex:1,
          child: Container(            
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.orange
            ),
            ),            
          ),
          Container(            
            height: 400,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.green
            ),
          ),
        ]),
      ),
    );
  }
}
