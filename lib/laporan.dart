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
          appBar: AppBar(
            backgroundColor:Colors.pink,
            title: Text("Laporan Pengaduan",style: TextStyle(
                fontSize: 35.0,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),),
          ),
          body: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget> [
                  RaisedButton(
                      child: Text("Tambah Laporan"),
                      onPressed: (){
                    setState(() {
                      widgets.add(Text("Laporan Pengaduan" + counter.toString(),style: TextStyle(fontSize: 35),
                      ));
                      counter++;
                    });
                  }),

                  RaisedButton(
                      child: Text ("Hapus Laporan"),
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
