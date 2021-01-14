import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tugas_uts/asian.dart';
import 'package:tugas_uts/berita.dart';
import 'package:tugas_uts/buttom_bar.dart';
import 'package:tugas_uts/demo.dart';
import 'package:tugas_uts/event.dart';
import 'package:tugas_uts/menlu.dart';
import 'package:tugas_uts/penyuluhan.dart';
import 'package:tugas_uts/sosialisasi.dart';
import 'package:tugas_uts/stop.dart';
import 'package:tugas_uts/talkshow.dart';
import 'package:tugas_uts/waves.dart';

=======
import 'package:tugas_uts/buttom_bar.dart';
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82

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
<<<<<<< HEAD
        children: <Widget>[
          Stack(
            children: <Widget>[

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////// BORDER DIATAS DENGAN GRADASI ////////////////////////////////////////////////////////////////////////////////////////////////////

            //////////////// Border Belakang

              Container(
                height: 190.0,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(75.0)),
                    color: Colors.pink),
              ),

            /////////////// Border Depan
              Container(
                height: 150.0,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(65.0)),
                    color: Colors.pinkAccent),
              ),

          ////////////// Teks pada border
              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 15.0),
                child: Text(
                  'Selamat Datang',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 45.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

          /////////// Teks pada Border

              Padding(
                padding: EdgeInsets.only(top:70.0, left: 15.0),
                child: Text(
                  'Setara.id',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 70.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

            ],
          ),

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////// INFO TERBARU PADA SLIDE ATAS ///////////////////////////////////////////////////////////////////
          SizedBox(height: 25.0),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Terbaru',
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 5.0),
                  child: Container(
                    height: 125.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        InkWell(
                          onTap:() {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return Sosialisasi();
                              }),
                            );
                          },
                          child: getWorks('assets/sosialisasi.jpeg'),
                        ),

                        InkWell(
                          onTap:() {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return Penyuluhan();
                              }),
                            );
                          },
                          child: getWorks('assets/penyuluhan.JPG'),
                        ),
                        InkWell(
                          onTap:() {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return Stop();
                              }),
                            );
                          },
                          child: getWorks('assets/kekerasan.jpg'),
                        ),

                        InkWell(
                          onTap:() {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return Asian();
                              }),
                            );
                          },
                          child:  getWorks('assets/asian.jpg'),
                        ),


                        InkWell(
                          onTap:() {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return Menlu();
                              }),
                            );
                          },
                          child:  getWorks('assets/menlu.jpeg'),
                        ),

                        InkWell(
                          onTap:() {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return Talkshow();
                              }),
                            );
                          },
                          child:  getWorks('assets/Talkshow.jpg'),
                        ),

                        InkWell(
                          onTap:() {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return Waves();
                              }),
                            );
                          },
                          child:  getWorks('assets/waves.jpg'),
                        ),
                      ],
                    ),
                  ),
                ),

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////// KUMPULAN BERITA ///////////////////////////////////////////////////////////////////////////////////////////////////////////

                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Berita',
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),

                      OutlineButton(
                          child:Text('Lihat Selengkapnya',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 15)),
                          color: Colors.pink,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: (){
                            Navigator.of(context).push( MaterialPageRoute(builder: (context){
                              return Berita();
                            }),
                            );
                          }
                          ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Column(
                  children: <Widget>[
                    menuCard('Demo Asosiasi Perempuan', 'assets/demo.jpeg',
                        'Pemberdaya Perempuan', 4, 2.8, 1.2),
                    SizedBox(height: 12.0),
                    menuCard('Stop Tindakan Kekerasan ', 'assets/kekerasan.jpg', 'Perempuan dan Anak', 4,
                        4.2, 2.8),
                  ],
                ),

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////// KUMPULAN EVENT ////////////////////////////////////////////////////////////////////////////////////////////////////

                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Event',
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),
                      OutlineButton(
                          child:Text('Lihat Selengkapnya',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 15)),
                          color: Colors.pink,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),

                          onPressed: (){
                            Navigator.of(context).push( MaterialPageRoute(builder: (context){
                              return Event();
                            }),
                            );
                          }),
                    ],
                  ),
                ),
                SizedBox(height: 12.0),
                Column(
                  children: <Widget>[
                    menuCard('Sosialisai Kebijakan Perlindungan', 'assets/sosialisasi.jpeg',
                        'Perlindungan Perempuan', 4, 2.8, 1.2),
                    SizedBox(height: 8.0),
                    menuCard('Penyuluhan Warga', 'assets/penyuluhan.JPG', 'Pemberdayaan Perempuan', 4,
                        4.2, 2.8),
                  ],
                ),
              ],
            ),

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////  BUTTOM YANG ADA DIBAWAH DAN DIPANGGIL DARI BUTTOM BAR /////////////////////////////////////////////////////////////////////

      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.home),
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


>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
