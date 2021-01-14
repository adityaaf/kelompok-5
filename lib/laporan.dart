import 'package:flutter/material.dart';
import 'package:tugas_uts/buttom_bar.dart';
import 'package:tugas_uts/dashboard.dart';

class Laporan extends StatefulWidget {
  @override
  _LaporanState createState() => _LaporanState();
}

class _LaporanState extends State<Laporan> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 115.0,
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
                      'Laporan Pengaduan',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 37.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget> [
                  RaisedButton(
                      child: Text("Tambah Laporan",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        color: Colors.white
                      )),
                      color: Colors.pinkAccent,
                      onPressed: (){
                    setState(() {
                      widgets.add(Text("Laporan Pengaduan" + counter.toString(),style: TextStyle(fontSize:38,color: Colors.pink),
                      ));
                      counter++;
                    });
                  }
                  ),
                  RaisedButton(
                      child: Text ("Hapus Laporan",style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                      color: Colors.pinkAccent,
                      onPressed: (){
                        setState(() {
                          widgets.removeLast();
                          counter--;
                        });
                      }
                      )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgets,
              )
            ],
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
        ),
      );
  }
}
