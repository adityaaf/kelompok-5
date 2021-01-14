import 'package:flutter/material.dart';
import 'package:tugas_uts/buttom_bar.dart';
import 'package:tugas_uts/dashboard.dart';
<<<<<<< HEAD
import 'package:tugas_uts/penyuluhan.dart';
import 'package:tugas_uts/sosialisasi.dart';
import 'package:tugas_uts/talkshow.dart';
import 'package:tugas_uts/waves.dart';
=======
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82

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
<<<<<<< HEAD
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

            ],
          ),

          SizedBox(height: 10.0),
          Column(
            children: <Widget>[
              menuCard('Sosialisai Kebijakan Perlindungan', 'assets/sosialisasi.jpeg',
                  'Perlindungan Perempuan', 4, 2.8, 1.2),
              OutlineButton(
                  child:Text('Lihat Selengkapnya',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 12)),
                  color: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),

                  onPressed: (){
                    Navigator.of(context).push( MaterialPageRoute(builder: (context){
                      return Sosialisasi();
                    }),
                    );
                  }),
              SizedBox(height: 8.0),
              menuCard('Penyuluhan Warga', 'assets/penyuluhan.JPG', 'Pemberdayaan Perempuan', 4,
                  4.2, 2.8),
              OutlineButton(
                  child:Text('Lihat Selengkapnya',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 12)),
                  color: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),

                  onPressed: (){
                    Navigator.of(context).push( MaterialPageRoute(builder: (context){
                      return Penyuluhan();
                    }),
                    );
                  }),
            ],
          ),


          SizedBox(height: 10.0),
          Column(
            children: <Widget>[
              menuCard('Talkshow dan Penyuluhan', 'assets/Talkshow.jpg',
                  'Perlindungan Perempuan', 4, 2.8, 1.2),
              OutlineButton(
                  child:Text('Lihat Selengkapnya',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 12)),
                  color: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),

                  onPressed: (){
                    Navigator.of(context).push( MaterialPageRoute(builder: (context){
                      return Talkshow();
                    }),
                    );
                  }),
              SizedBox(height: 8.0),
              menuCard('Program Waves Indonesia', 'assets/waves.jpg', 'Program Pemberdayaan', 4,
                  4.2, 2.8),
              OutlineButton(
                  child:Text('Lihat Selengkapnya',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 12)),
                  color: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),

                  onPressed: (){
                    Navigator.of(context).push( MaterialPageRoute(builder: (context){
                      return Waves();
                    }),
                    );
                  }),
            ],
          ),


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


    );
  }

  Widget getWorks(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Container(
        height: 100.0,
        width: 125.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }

  Widget menuCard(String title, String imgPath, String type, int rating,
      double views, double likes) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        elevation: 4.0,
        child: Container(
          height: 125.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0), color: Colors.white),
          child: Row(
            children: <Widget>[
              SizedBox(width: 10.0),
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7.0)),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15.0),
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    type,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 7.0),
                  Row(
                    children: <Widget>[
                      getStar(rating, 1),
                      getStar(rating, 2),
                      getStar(rating, 3),
                      getStar(rating, 4),
                      getStar(rating, 5)
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.remove_red_eye,
                          color: Colors.grey.withOpacity(0.4)),
                      SizedBox(width: 3.0),
                      Text(views.toString()),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      SizedBox(width: 3.0),
                      Text(likes.toString())
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getStar(rating, index) {
    if (rating >= index) {
      return Icon(Icons.star, color: Colors.pinkAccent);
    } else {
      return Icon(Icons.star, color: Colors.pinkAccent.withOpacity(0.5));
    }
  }
}
=======
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
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
