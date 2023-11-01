//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_final_fields, unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ConductorPage extends StatefulWidget {
  const ConductorPage({super.key});

  @override
  State<ConductorPage> createState() => _ConductorPageState();
}

class _ConductorPageState extends State<ConductorPage> {

  TextEditingController _date = TextEditingController();
  TextEditingController _time = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 232, 245),

      //body of the driver page
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(10), left: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 154, 189, 122), // Shadow color
                      offset: Offset(0, 10), // Offset of the shadow
                      blurRadius: 5, //Spread of the shadow
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 21.0, vertical: 8.0),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                backgroundColor: Colors.yellow,
                                radius: 100,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/MaleProfileLogo.jpeg',
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
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width: 1250,
                          height: 500,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 217, 232, 245),
                            borderRadius: BorderRadius.circular(10),                            
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 400,
                                height: 500,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.open_in_browser_outlined,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      'Fill in the fare amount collected on each day in the field!',
                                      style: GoogleFonts.gafata(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),

                              // conductors fill in fare collection form/ function
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 800,
                                  height: 500,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 600,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(
                                            child: Text('FARE COLLECTION DETAILS',
                                            style: GoogleFonts.acme(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold
                                            ),),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        width: 600,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          color: Colors.white
                                        ),
                                        child: Column(
                                          children: [

                                            //date
                                            SizedBox(height: 10),
                                            TextField(
                                              controller: _date,
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.calendar_today_rounded,
                                                color: Colors.black,),
                                                labelText: "Select Date",
                                                hintText: "Choose Date"
                                              ),
                                              onTap: () async {
                                                DateTime? pickeddate = await showDatePicker(
                                                  context: context,
                                                   initialDate: DateTime.now(), 
                                                   firstDate: DateTime(2023), 
                                                   lastDate: DateTime(2024));

                                                   if (pickeddate !=null){
                                                    setState(() {
                                                      _date.text = DateFormat('dd-MM-yyyy').format(pickeddate);
                                                    });
                                                   }
                                              },
                                            ),
                                            SizedBox(height: 30),

                                            //Time
                                            TextField(
                                              controller: _time,
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.watch_later_rounded,
                                                color: Colors.black,),
                                                labelText: "Select Time",
                                                hintText: "Choose Time"
                                              ),
                                              onTap: () async{
                                                TimeOfDay? pickedtime = await showTimePicker(
                                                  context: context, 
                                                  initialTime: TimeOfDay.now());

                                                  if (pickedtime !=null){
                                                    setState(() {
                                                      _time.text = pickedtime.format(context);
                                                    });
                                                  }
                                              }
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                
                              ),
                              SizedBox( height: 20),                             
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

