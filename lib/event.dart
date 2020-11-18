import 'package:flutter/material.dart';
import 'package:tugas_uts/buttom_bar.dart';
import 'package:tugas_uts/dashboard.dart';

class Event extends StatefulWidget {
  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9EFEB),
      body: ListView(
        children: <Widget>[
      Stack(
      children: <Widget>[
        Container(
        height: 120.0,
        decoration: BoxDecoration(
            borderRadius:
            BorderRadius.only(bottomRight: Radius.circular(75.0)),
            color: Colors.pink),
      ),
        Container(
          height: 90.0,
          decoration: BoxDecoration(
              borderRadius:
              BorderRadius.only(bottomRight: Radius.circular(65.0)),
              color: Colors.pinkAccent),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.0, left: 15.0),
          child: Text(
            'Event Setara.id',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 45.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),

    ]
    )
    ]
    ),
        floatingActionButton: FloatingActionButton(onPressed: () {},
    backgroundColor: Colors.pink,
    child:
          IconButton (
           icon:Icon(Icons.home,color:Colors.white),
          onPressed: () {
             Navigator.of(context).push(
               MaterialPageRoute(builder: (context){
                 return Dashboard();
               }
               ),
             );
          }
          ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    bottomNavigationBar: BottomBar(),
    );
  }
}
