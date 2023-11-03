//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_final_fields, unused_element, avoid_unnecessary_containers, 

//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
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
  TextEditingController _amount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var value = 69.8;

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
                                  'WELCOME BACK!  '
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
                          width: 1325,
                          height: 500,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 217, 232, 245),
                            borderRadius: BorderRadius.circular(10),                            
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 560,
                                  height: 500,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(                                    
                                        children: [                                    
                                          Text('COLLECTION PROGRESS.',
                                          style: GoogleFonts.acme(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold
                                            ),
                                            ),
                                            SizedBox( height: 5),

                                            Text('Here is your daily collection progress in the chart below',
                                            style: GoogleFonts.gafata(
                                              fontSize: 20,
                                               fontWeight: FontWeight.bold
                                               ),
                                               ),

                                               SizedBox(height: 20),

                                          AnimatedRadialGauge(
                                            duration: Duration(seconds: 10),
                                            curve: Curves.elasticOut,
                                            radius: 200,
                                             value: value.toDouble(),
                                             //styling the gauge 
                                             axis: GaugeAxis(
                                              //minimun and max value
                                              min: 0,
                                              max: 100,
                                              
                                              //displaying the gauge to be at an angle arc
                                              degrees: 180,
                                              
                                              style: GaugeAxisStyle(
                                                thickness: 20,
                                                background: Colors.grey,
                                                segmentSpacing: 4,//dividing the region of gauge
                                              ),
                                              //color of pointer
                                              progressBar: GaugeProgressBar.rounded(
                                                color: _getProgressBarColor(value.toDouble()),
                                              ),
                                              
                                              //gauge segments
                                              segments: [

                                                //Bad progress
                                                GaugeSegment(
                                                  from: 0,
                                                  to: 20,
                                                  //color: Colors.red,
                                                  cornerRadius: Radius.zero,
                                                  ),

                                                  //Average progress
                                                  GaugeSegment(
                                                  from: 20,
                                                  to: 40,
                                                  //color: Colors.orange,
                                                  cornerRadius: Radius.zero,
                                                  ),

                                                  //fair progress
                                                  GaugeSegment(
                                                  from: 40,
                                                  to: 60,
                                                  //color: Colors.yellow,
                                                  cornerRadius: Radius.zero,
                                                  ),

                                                  //Good progress
                                                  GaugeSegment(
                                                  from: 60,
                                                  to: 80,
                                                  //color: Color.fromARGB(255, 195, 235, 149),
                                                  cornerRadius: Radius.zero,
                                                  ),

                                                  //Excellent progress
                                                  GaugeSegment(
                                                  from: 80,
                                                  to: 100,
                                                  //color: Colors.green,
                                                  cornerRadius: Radius.zero,
                                                  ),
                                              ],
                                             ),
                                             ),
                                             Text('REVIEW: ${_grade(value.toDouble())}',
                                             style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,),
                                              ),
                                              Text('${value.toStringAsFixed(2)}%',// Display the value as a percentage with 2 decimal places
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color: _getProgressBarColor(value.toDouble()),// Use the same color as the gauge
                                                ),
                                                ),
                                             ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width:9),

                              // conductors fill in fare collection form/ function
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 700,
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
                                            child: Column(
                                              children: [
                                                Text('FARE COLLECTION DETAILS.',
                                                style: GoogleFonts.acme(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold
                                                ),),
                                                SizedBox( height: 5),
                                                Text(
                                                  'Fill in the fare amount collected on each day in the field below!',
                                                  style: GoogleFonts.gafata(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold
                                                    ),)
                                              ],
                                            ),                                            
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        width: 600,
                                        height: 350,
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
                                                labelText: "Todays Date",
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
                                                labelText: "Time Submitting",
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
                                            SizedBox(height: 20),

                                            //Amount
                                            TextField(
                                              controller: _amount,
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.input_rounded,
                                                color: Colors.black),
                                                labelText: "Amount Collected",
                                                hintText: "Enter amount",                                                
                                              ),
                                              inputFormatters: <TextInputFormatter>[
                                                FilteringTextInputFormatter.digitsOnly
                                              ],
                                            ),
                                            SizedBox(height: 20),

                                            ElevatedButton(onPressed: (){},
                                            
                                            style: ElevatedButton.styleFrom(                                              
                                              backgroundColor: Colors.blue[300],
                                              ),
                                             child: Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 50, vertical: 30
                                              ),
                                               child: Text(
                                                'SUBMIT',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30,
                                                ),),
                                             ))
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
  
  _getProgressBarColor(double value) {
    if (value <= 20) {
    return Colors.red;
  } else if (value <= 40) {
    return Colors.orange;
  } else if (value <= 60) {
    return Colors.yellow;
  } else if (value <= 80){
    return Color.fromARGB(255, 195, 235, 149);
  } else{
    return Colors.green;
  }
  }
}

 String _grade(double value){
  if (value <= 20) {
    return 'BAD';
  } else if (value <= 40) {
    return 'AVERAGE';
  } else if (value <= 60) {
    return 'FAIR';
  } else if (value <= 80){
    return 'GOOD';
  }else {
    return 'EXCELLENT';
  }
}
