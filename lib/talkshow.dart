import 'package:flutter/material.dart';
import 'package:tugas_uts/event.dart';

class Talkshow extends StatefulWidget {
  @override
  _TalkshowState createState() => _TalkshowState();
}

class _TalkshowState extends State<Talkshow> {
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
                padding: EdgeInsets.only(top: 25.0, left: 15.0),
                child: Text(
                  'Event Setara.id',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 45.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                  padding: EdgeInsets.only(top: 205.0, left: 15.0,right: 15.0 ),
                  child: Image (
                    image:
                    NetworkImage('https://pug.sisibaik.id/wp-content/uploads/2020/12/WhatsApp-Image-2020-12-15-at-22.31.33.jpeg',
                    ),

                  )
              ),

              Padding(
                padding: EdgeInsets.only(top: 130.0, left: 25.0, ),
                child: Text(
                  'Talkshow dan Sosialisasi',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 165.0, left: 65.0, ),
                child: Text(
                  'Kesetaraan Gender',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),


              Padding(
                padding: EdgeInsets.only(top: 455.0, left: 15.0, right: 10.0),
                child: Text(
                  'Menteri Lingkungan Hidup dan Kehutanan memberikan penghargaan kepada pemenang Lomba Pengarusutamaan Gender (PUG) antar Eselon I lingkup KLHK di Jakarta, Jumat (9/10/2020).',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 550.0, left: 15.0, right: 8.0 ),
                child: Text(
                  '“Dengan diselenggarakannya lomba ini, saya harap KLHK dapat menjadi instansi yang responsif terhadap gender dalam bidangnya, sehingga layak menjadi tempat untuk belajar dan menjadi contoh bagi pihak lain dalam percepatan pelaksanaan PUG,” tutur Menteri Siti.',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: Colors.pink,
        child:
        IconButton (
            icon:Icon(Icons.arrow_back_sharp,color:Colors.white),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context){
                  return Event();
                }
                ),
              );
            }
        ),

      ),



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