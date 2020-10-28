import 'package:flutter/material.dart';
import 'package:flutter_app/second_page.dart';       // Untuk Mengimport Package dari material.dart yang ada di projek flutter_app

class MyApp extends StatelessWidget{          // Class My App yang memggunakan Extend Stateles Widget
  @override                                   //  Typenya Override
  Widget build(BuildContext context) {        // Widget akan di Build sesuai dengan context
    return MaterialApp(                       // Widget yang diberinama MaterialApp
      debugShowCheckedModeBanner: false,      // Untuk menghilangkan Label Debug pada pojok kanan atas App Bar
      title: (""),                            // Unruk Memberikan Tittle
      theme: ThemeData(                       // Memberikan Tema Pada Tampilan aplikasi

        // Coba jalankan aplikasi Anda dengan "flutter run". Anda akan melihat
        // aplikasi memiliki bilah alat berwarna biru. Kemudian, tanpa keluar dari aplikasi, coba
        // ubah jam tangan utama di bawah menjadi Colors.green dan kemudian aktifkan
        // "hot reload" (tekan "r" di konsol tempat Anda menjalankan "flutter run",
        // atau cukup simpan perubahan Anda ke "hot reload" di Flutter IDE).
        // Perhatikan bahwa penghitung tidak me-reset kembali ke nol; aplikasi
        // tidak dimulai ulang.

        primarySwatch: Colors.pink,          //Memberikan Tampilan Pada Appbar dengan warna Pink

        // Ini membuat kepadatan visual beradaptasi dengan platform yang Anda jalankan
        // aplikasi aktif. Untuk platform desktop, kontrolnya akan lebih kecil dan
        // lebih dekat (lebih padat) daripada di platform seluler.

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////// UNTUK MEMBUAT APP BAR YANG ADA DIATAS //////////////////////////////////////////////////////////////////////////////////////////

  // Widget ini adalah root dari aplikasi yang dibuat
class MainPage extends StatelessWidget {                            // Class MainPage yang memggunakan Extend Stateles Widget
  @override                                                         // Typenya Override
  Widget build(BuildContext context) {                              // Widget akan di Build sesuai dengan context
    return Scaffold(                                                // Proses kembali menggunakan Scafflod
      appBar: AppBar(                                               // Membuat App Bar
        title: Text ("KESETARAAN GENDER SDGS'5 ",                    // Nama yang akan ditampilkan pada App Bar
        style: TextStyle(                                           // Untuk mengatur TextStyle yang terdapat pada Appbar
            color: Color(0xFFFFFFFF),fontSize: 20 ),                // Untuk memberikan Warna pada text dan ukuran text
      ),
        backgroundColor: Color(0xFFFE5788),                         // Background Color dari App Bar
      ),

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////// UNTUK MEMBERIKAN WARNA PADA BACKGROUND BODY DENGAN PERPADUAN GRADASI WARNA ////////////////////////////////////////////////////////////////////

      body: Stack(                                                  // Stack kemampuan untuk mengatur tatak letak secara custom.
        children: <Widget> [                                        // Sebagai Sub sub anak dari Widget yang akan dibuat
          Container(                                                // wadah untuk menampung objek lainnya atau sebagai dirinya sendiri.
            decoration: BoxDecoration(                              // Untuk Membuat dekorasi yang terdapat pada body
                gradient: LinearGradient(                           // Untuk Membuat gradien atau gradasi warna pada boxnya
                    colors: [Color(0xFFFE5788), Color(0xFFF56D5D)], // Warna yang akan digunakan untuk gradasi pada Body
                    begin: Alignment.topCenter,                     // Awal dari Proses
                    end: Alignment.bottomCenter                     // Batas Akhir yang akan dilakukan proses
                )
            ),
          ),

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////// UNTUK MEMBERIKAN BOX KOTAK YANG BERADA DI TENGAH BODY //////////////////////////////////////////////////////////////////////////////////

          Center(                                                   // Untuk memberikan tata letaknya yaitu berada ditengah
            child: SizedBox(                                        // Untuk membuat box yang berada ditengah
              width: MediaQuery.of(context).size.width * 0.8,       // Untuk Memberikan Ukuran Lebar Box yang akan dibuat
              height: MediaQuery.of(context).size.height * 0.8,     // Untuk Memberikan ukuran tinggi Box yang akan dibuat
              child: Card(                                          // tujuannya agar dapat memanggil lebih dari satu class
                elevation: 10,
                child: Stack(
                  children: <Widget> [
                    Opacity(opacity: 0.7,

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////   UNTUK  MEMBERIKAN GAMBAR BACKGROUND YANG BERADA DIDALAM BOX YANG SUDAH DIBUAT  ////////////////////////////////////////////////////////////////////

                      child: Container(
                        decoration: BoxDecoration(                      // Untuk Membuat dekorasi yang terdapat pada Box
                            borderRadius: BorderRadius.circular(4),     // Untuk Memberikan radius dari gambar yang akan ditempelkan / memberi lengkungan
                            image: DecorationImage(                     // Untuk Memberikan Gambar Pada Box
                                image:AssetImage(                       // Untuk Mengambil gambar yang berada Asset sudah didaftarkan pada pubspec.yaml
                                    "assets/white-marble-1-2018.jpg"),  // Untuk mengambil gambar yang akan ditempel berada di folder asset dan nama gambar
                                fit: BoxFit.cover)),                    // Untuk meletakkan sesuai dengan fit pada cover box
                      ),
                    ),


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////   UNTUK MEMASUKKAN GAMBAR SDGS 5 PADA BOX TETAPI BERADA DIBAGIAN SISI ATAS / SETENGAH BAGIAN ATAS SAJA  ///////////////////////////////////////////

                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,  // Untuk Memberikan ukuran tinggi Box yang akan dibuat
                      decoration: BoxDecoration(                          // Untuk Membuat dekorasi yang terdapat pada Box
                          borderRadius: BorderRadius.only(                // Untuk Memberikan radius lengkungan dari gambar yang akan ditempelkan, Hanya bagian Atas
                              topLeft: Radius.circular(4),                // Untuk Memberikan Radius dari bagian kiri atas
                              topRight: Radius.circular(4)                // Untuk Memberikan Radius dari bagian kanan atas
                          ),
                          image: DecorationImage (                        // Untuk Memberikan Gambar Pada Box
                              image:AssetImage(                           // Untuk Mengambil gambar yang berada Asset sudah didaftarkan pada pubspec.yaml
                                  "assets/sdgs.jpg"),                     // Untuk mengambil gambar yang akan ditempel berada di folder asset dan nama gambar
                              fit: BoxFit.cover)),                        // Untuk meletakkan sesuai dengan fit pada cover box
                    ),

/////////////////////////////////////////////////////// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////// UNTUK MEBERIKAN TEXT NAMA KELOMPOK YANG BERADA DIBAWAH GAMBAR SGDS'5 //////////////////////////////////////////////////////////////

                    Container(
                        margin: EdgeInsets.fromLTRB(                          // Untuk Memberikan ukuran Margin dari Text yang akan dibuat dengan Double
                            20,                                               // Untuk Memberikan ukuran Double left
                            50 + MediaQuery.of(context).size.height * 0.35,   // Untuk Memberikan ukuran Double top
                            20,                                               // Untuk Memberikan ukuran Double right
                            20),                                              // Untuk Memberikan ukuran Double bottom
                        child:Center (                                        // Untuk menentukan posisi dari text yaitu berada ditengah
                          child: Column(                                      // Untuk memberikan berupa kolom / kebawah
                            children: <Widget>[
                              Text("NAMA KELOMPOK 5:",                        // Text yang akan ditampilkan
                                maxLines: 2,                                  // Garis maksimal yaitu berjumlah 2 kebawah
                                textAlign: TextAlign.center,                  // TextAlign berada ditengah
                                style: TextStyle(                             // Untuk memberikan Style pada tulisan yang ditampilkan
                                    color: Color(0xFFF56D5D),fontSize: 20),   // Untuk memberikan Warna pada text dan ukuran text
                              ),

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////// UNTUK MEMBERIKAN NAMA ANGGOTA KELOMPOK YANG MANA SUSUNANNYA TURUN KEBAWAH ////////////////////////////////////////////////////////////////

                            /////////// UNTUK NAMA ANGGOTA YANG PERTAMA

                              Container(
                                  margin: EdgeInsets.fromLTRB(                      // Untuk Memberikan ukuran Margin dari Text yang akan dibuat dengan Double
                                      0,                                            // Untuk Memberikan ukuran Double left
                                      20,                                           // Untuk Memberikan ukuran Double top
                                      0,                                            // Untuk Memberikan ukuran Double right
                                      15                                            // Untuk Memberikan ukuran Double bottom
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("1.Aditya Ari Fikri ( 182410102002 )",   // Text yang akan ditampilkan
                                        maxLines: 2,                                // Garis maksimal yaitu berjumlah 2 kebawah
                                        textAlign: TextAlign.center,                // TextAlign berada ditengah
                                        style: TextStyle(                           // Untuk memberikan Style pada tulisan yang ditampilkan
                                            color: Color(0xFFF56D5D),fontSize: 12), // Untuk memberikan Warna pada text dan ukuran text
                                      ),
                                    ],
                                  )
                              ),

                            /////////// UNTUK NAMA ANGGOTA YANG KEDUA

                              Container(
                                  margin: EdgeInsets.fromLTRB(                       // Untuk Memberikan ukuran Margin dari Text yang akan dibuat dengan Double
                                      0,                                             // Untuk Memberikan ukuran Double left
                                      5,                                             // Untuk Memberikan ukuran Double top
                                      0,                                             // Untuk Memberikan ukuran Double right
                                      5                                              // Untuk Memberikan ukuran Double bottom
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("2.Galih Siswo H. ( 182410102018 )",       // Text yang akan ditampilkan
                                        maxLines: 2,                                  // Garis maksimal yaitu berjumlah 2 kebawah
                                        textAlign: TextAlign.center,                  // TextAlign berada ditengah
                                        style: TextStyle(                             // Untuk memberikan Style pada tulisan yang ditampilkan
                                            color: Color(0xFFF56D5D),fontSize: 12),   // Untuk memberikan Warna pada text dan ukuran text
                                      ),
                                    ],
                                  )
                              ),

                            ///////// UNTUK NAMA ANGGOTA YANG TERAKHIR

                              Container(
                                  margin: EdgeInsets.fromLTRB(                        // Untuk Memberikan ukuran Margin dari Text yang akan dibuat dengan Double
                                      0,                                              // Untuk Memberikan ukuran Double left
                                      15,                                             // Untuk Memberikan ukuran Double top
                                      0,                                              // Untuk Memberikan ukuran Double right
                                      15                                              // Untuk Memberikan ukuran Double bottom
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("3.Dimas Wahyu R.( 182410102067 )",        // Text yang akan ditampilkan
                                        maxLines: 2,                                  // Garis maksimal yaitu berjumlah 2 kebawah
                                        textAlign: TextAlign.center,                  // TextAlign berada ditengah
                                        style: TextStyle(                             // Untuk memberikan Style pada tulisan yang ditampilkan
                                            color: Color(0xFFF56D5D),fontSize: 12),   // Untuk memberikan Warna pada text dan ukuran text
                                      ),
                                    ],
                                  )
                              ),

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// TEXT YANG ADA DIATAS TOMBOL BUTTON //////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                              Container(
                                margin: EdgeInsets.fromLTRB(                        // Untuk Memberikan ukuran Margin dari Text yang akan dibuat dengan Double
                                    10,                                              // Untuk Memberikan ukuran Double left
                                    15,                                             // Untuk Memberikan ukuran Double top
                                    10,                                              // Untuk Memberikan ukuran Double right
                                    10                                              // Untuk Memberikan ukuran Double bottom
                                ),
                                child: Center(                                                    // Memberikan Teks pada Container yang letaknya berada ditengah
                                  child: Column(                                                  // Tipenya berupa Colom untuk Teksnya
                                    children: <Widget>[
                                      Text ("Silahkan Klik Tombol Dibawah ini!!",                 // Untuk Menampilkan Teks yang akan ditampilkan
                                      maxLines: 2,                                                // Memberikan Line Maksimal sebanyak 2
                                      textAlign: TextAlign.center,                                // Teks Berada Ditengah
                                      style: TextStyle(color: Color(0xFFF56D5D),fontSize: 12),    // Memberikan Teks STYLE
                                      )
                                    ],
                                  ),
                                ),
                              ),


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////// TOMBOL BUTTON UNTUK MENUJU KE PAGE SELANJUTNYA ////////////////////////////////////////////////////////////////////////////////////////////

                              Container(
                                margin: EdgeInsets.fromLTRB(                            // Untuk Memberikan ukuran Margin dari Text yang akan dibuat dengan Double
                                    10,                                                 // Untuk Memberikan ukuran Double left
                                    0,                                                  // Untuk Memberikan ukuran Double top
                                    10,                                                 // Untuk Memberikan ukuran Double right
                                    10                                                  // Untuk Memberikan ukuran Double bottom
                                ),
                                child: RaisedButton(                                    // Untuk memberikan Tombol Button
                                  child: Text ( " Masuk "),                             // Teks yang terdapat pada Tombol Button
                                  onPressed: (){                                        // Apabila terjadi sentuhan atau penekanan pada tombol button
                                    Navigator.push(context, MaterialPageRoute(builder: (context){ // Navigator akan mengarahkan ke halaman selanjutnya
                                      return SecondPage();
                                    }));
                                  },
                                ),
                              )
                            ],
                          ),
                        )

                    )
                  ],
                ),

              ),
            ),

          )
        ],
      ),
    );
  }
}
