import 'package:flutter/material.dart';         //Untuk Mengimport Package dari material.dart yang ada di projek flutter_app
import 'package:flutter_app/login_page.dart';   //Untuk Mengimport Package dari login_page.dart yang ada di projek flutter_app

void main() =>
    runApp(MyApp());

// Apabila hanya akan menampilkan syntax seperti dibawah maka dapat menggunakan syntax stless maka akan otomatis terbentuk seperti dibawah
// beserta dengan Class

class MyApp extends StatelessWidget {          // Class MyApp yang memggunakan Extend  Stateles Widget
  @override                                    // Typenya yaitu override
  Widget build(BuildContext context) {         // Widget akan di Build sesuai dengan context
    return MaterialApp(                        // Untuk Proses Kembali MaterialApp
      debugShowCheckedModeBanner: false,       // Untuk Menghilangkan Tulisan Debug yang ada di pojok kanan atas
      home:LoginPage(),                        // Home menuju Login Page
    );
  }
}