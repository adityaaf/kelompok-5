import 'package:flutter/material.dart';           // Untuk Mengimport Package dari material.dart yang ada di projek flutter_app
import 'package:flutter_app/main_page.dart';      // Untuk Mengimport Package dari main_page.dart yang ada di projek flutter_app

class LoginPage extends StatelessWidget {         // Class Login Page yang memggunakan Extend Hanya Stateles Widget
  @override                                       //  Typenya Override
  Widget build(BuildContext context) {            // Widget akan di Build
    return Scaffold(                              // Untuk Proses Kembali
      backgroundColor: Color(0xFFFE5788),         // Untuk memberikan Background Color dari Body
      body: Center(                               // Untuk Menentukan tata letak yang berada ditengah
        child: RaisedButton (                     // Untuk Memeberikan Tombbol Button
          child: Text("Selamat Datang"),                   // Untuk memberikan nama pada Tombol Button
          onPressed: (){                          // Gerakan penekanan atau disentuh pada button
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){ // Navigasi untuk proses perpindahan
              return MainPage();                  // Untuk melakukan perpidahan page yaitu menuju ke halaman mainpage
            }));
          },
        ),
      ),
    );
  }
}
