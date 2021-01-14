import 'package:flutter/material.dart';
import 'package:tugas_uts/berita.dart';

class Menlu extends StatefulWidget {
  @override
  _MenluState createState() => _MenluState();
}

class _MenluState extends State<Menlu> {
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
                  'Berita Setara.id',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 45.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                  padding: EdgeInsets.only(top: 210.0, left: 15.0,right: 15.0 ),
                  child: Image (
                    image:
                    NetworkImage('https://awsimages.detik.net.id/community/media/visual/2020/11/14/menlu-retno-marsudi_169.jpeg?w=700&q=90',
                    ),

                  )
              ),

              Padding(
                padding: EdgeInsets.only(top: 130.0, left: 18.0, ),
                child: Text(
                  'Menlu Retno: Diplomasi Indonesia  ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 23.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),

              ),
              Padding(
                padding: EdgeInsets.only(top: 155.0, left: 48.0, ),
                child: Text(
                  'Aktif Kedepankan Isu Terkait  ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 23.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 178.0, left: 60.0, ),
                child: Text(
                  'Pemberdayaan Perempuan    ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 23.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),

              ),


              Padding(
                padding: EdgeInsets.only(top: 430.0, left: 15.0, right: 10.0),
                child: Text(
                  'Jakarta - Menteri Luar Negeri (Menlu) Retno Marsudi menekankan perlunya perubahan pola pikir untuk memajukan kesetaraan gender. Retno mengatakan diplomasi Indonesia sangat aktif dalam mengedepankan isu pemberdayaan perempuan.',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 530.0, left: 15.0, right: 5.0 ),
                child: Text(
                  '"Diplomasi Indonesia sangat aktif dalam mengedepankan isu pemberdayaan perempuan. Indonesia juga sangat aktif untuk isu women peace and security. Indonesia juga aktif dalam peran perempuan dalam perdamaian," kata Retno dalam telekonferensi  pertemuan ASEAN Women Leaders Summit, '
                      'Sabtu (14/11/2020).',
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
                  return Berita();
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