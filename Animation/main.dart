import 'package:flutter/material.dart';
import 'package:myanimation_app/flight.dart';
import 'package:myanimation_app/myanim.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'myanim',
    routes: {
      'myanim':(context)=>MyA1(),
      'flight':(context)=>FlightExample(),
    },


    home: Scaffold(
      appBar:AppBar(
        title:Text('Animation App',style: TextStyle(
            color: Colors.deepOrange
        ),
        textAlign:(TextAlign.center) ,
        ),

        backgroundColor: Colors.cyanAccent,

      ),
      body: FlightExample(),
    ),
    
  )
  );
}

