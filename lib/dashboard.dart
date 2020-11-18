import 'package:flutter/material.dart';
import 'package:tugas_uts/buttom_bar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9EFEB),
      body: ListView(
      children: <Widget>[
        Stack(
        children: <Widget>[
        Container(
          height: 190.0,
            decoration: BoxDecoration(
            borderRadius:
            BorderRadius.only(bottomRight: Radius.circular(75.0)),
                color: Colors.pink),
      ),
      Container(
        height: 165.0,
        decoration: BoxDecoration(
            borderRadius:
            BorderRadius.only(bottomRight: Radius.circular(65.0)),
            color: Colors.pinkAccent),
      ),
      Padding(
        padding: EdgeInsets.only(top: 35.0, left: 15.0),
        child: Text(
          'Selamat Datang',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
          Padding(
            padding: EdgeInsets.only(top: 75.0, left: 15.0),
            child: Text(
              'Setara.id',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 80.0,
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
          child: Icon(Icons.home),
          ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(),
    );
  }
}


