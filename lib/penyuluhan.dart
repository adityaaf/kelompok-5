import 'package:flutter/material.dart';
import 'package:tugas_uts/berita.dart';
import 'package:tugas_uts/event.dart';

class Penyuluhan extends StatefulWidget {
  @override
  _PenyuluhanState createState() => _PenyuluhanState();
}

class _PenyuluhanState extends State<Penyuluhan> {
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
                  padding: EdgeInsets.only(top: 210.0, left: 15.0,right: 15.0 ),
                  child: Image (
                    image:
                    NetworkImage('https://www.mediaandalas.com/wp-content/uploads/2019/09/IMG-20190918-WA0028-e1572420873408.jpg',
                    ),

                  )
              ),

              Padding(
                padding: EdgeInsets.only(top: 130.0, left: 70.0, ),
                child: Text(
                  'Penyuluhan Hukum Kesetaraan Gender ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 490.0, left: 15.0, right: 15.0),
                child: Text(
                  'Bidhum Polda Banten, Gelar Penyuluhan Hukum Pengarusutamaan Gender (PUG) di Lingkungan Polda Banten. [Agus].'
                  'Tak henti melakukan penyuluhan hukum tentang pentingnya kesetaraan gender, Tim Bidang Hukum Polda Banten terus mensosialisasikan kegiatan PUG kepada para Polwan & PNS Polri perempuan di lingkungan Polda Banten dan Jajaran, Rabu, (18/09/19).',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 640.0, left: 15.0, right: 15.0 ),
                child: Text(
                  'Hal itu tampak dalam kegiatan bertempat di Aula Rupatama Polda Banten. Mereka mendapat penyuluhan dan berdialog dengan tim yang dipimpin Kepala Bidang Hukum Polda Banten Kombes Pol. M Endro, SIK., M.H, yang bertindak selaku pemateri Tim Subbidsunluhkum Ipda Transito Yati, S.H, M.H. dan Ipda Rian Nugroho, SH.',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 770.0, left: 15.0, right: 15.0 ),
                child: Text(
                  'Setiap memberikan sosialisasi para peserta menjadi agen dalam pola pemikiran di masyarakat, margin di mata masyarakat.Pada prinsipnya perempuan lebih terbuka dalam jabatannya yang sama, keadilan dan kesetaraan gender',
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