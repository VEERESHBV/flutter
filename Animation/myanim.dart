import 'package:flutter/material.dart';
import 'package:myanimation_app/flight.dart';


class MyA1 extends StatefulWidget {
  @override
  _MyA1State createState() => _MyA1State();
}

class _MyA1State extends State<MyA1>
    with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;
  var value;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10 )
      );
      print(myanicon);

    animation=CurvedAnimation(parent: myanicon, curve: Curves.easeInQuad)
    ..addListener(() { 
        setState(() {
          print(animation.value);
          value=animation.value;
        });
     }
    );


    
    print(animation);

    myanicon.forward();
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Animation App',style: TextStyle(
            color: Colors.deepOrange
        ),
        textAlign:(TextAlign.center) ,
        ),

        backgroundColor: Colors.cyanAccent,

      ),
          body: Center(
        child: Card(
                child: GestureDetector(
                  onTap: (){
                    print('onTap is clicked');
                    myanicon.forward(from:0.5);
                  },
                                child: Container(
            height: double.infinity*value,
            width: double.infinity*value,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue,
            ),
            //color: Color.fromARGB(200*value.toInt(), 50*value.toInt(), 50*value.toInt(), 50*value.toInt()),
            //color: Colors.amberAccent,
            
            child: MaterialButton(
                          child: Center(child: Text(
                'Want to take a Flight ?😊',
                style: TextStyle(
                    fontSize:24*value  +2,
                    color: Colors.yellowAccent
                    

                 ),
                )
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => FlightExample()),);
              },
            ),

            
          ),
                ),
        ),
      ),
    );
  }
}