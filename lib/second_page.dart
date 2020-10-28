import 'package:flutter/material.dart';           // Untuk Mengimport Package dari material.dart yang ada di projek flutter_app

class SecondPage extends StatelessWidget {         // Class Login Page yang memggunakan Extend Hanya Stateles Widget
  @override                                       //  Typenya Override
  Widget build(BuildContext context) {            // Widget akan di Build
    return MaterialApp(
      debugShowCheckedModeBanner: false,      // Untuk menghilangkan Label Debug pada pojok kanan atas App Bar

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////// NAVIGATION BAR YANG ADA DIATAS ///////////////////////////////////////////////////////////////////////////////////////////////////////////

      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(title: Text("KESETARAAN GENDER SDGS'5"),
            backgroundColor:  Color(0xFFFE5788),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.comment),
                ),
                Tab(
                  icon: Icon(Icons.computer),
                ),
                Tab(
                  text: "News",
                )
              ],
            ),
          ),

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////  TOMBOL BUTTON UNTUK KEMBALI KE PAGE SEBELUMNYA ////////////////////////////////////////////////////////////////////////////////////////

          body: Center(                               // Untuk Menentukan tata letak yang berada ditengah
            child: RaisedButton (                     // Untuk Memeberikan Tombbol Button
              child: Text("Kembali"),                 // Untuk memberikan nama pada Tombol Button
              onPressed: (){                          // Gerakan penekanan atau disentuh pada button
                Navigator.pop(context);               // Navigator untuk mengarahkan ke halaman yang sebelumnya
              },
            ),
          ),

        ),
      ),
    );

  }
}
