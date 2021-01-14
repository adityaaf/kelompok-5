import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'signup.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
<<<<<<< HEAD

  String _email;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


=======
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
<<<<<<< HEAD
        '/signup': (BuildContext context) =>  new SignupPage()
=======
        '/signup': (BuildContext context) => new SignupPage()
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
      },

      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
<<<<<<< HEAD

  final formkey = GlobalKey<FormState>();
  var _controlleremail = TextEditingController();
  String email = '';
  var _controllerpassword = TextEditingController();
  String password = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xFFF9EFEB),
=======
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
<<<<<<< HEAD
            Padding(
              padding: EdgeInsets.only(top:100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ImageIcon(
                    AssetImage('assets/setara.png'),
                    size: 200,
                  )
                ],
              ),
            ),
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////// JUDULL SELAMAT DATANG PADA HALAMAN LOGIN ///////////////////////////////////////////////////////////////////////////////
=======

>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
<<<<<<< HEAD
                    padding: EdgeInsets.fromLTRB(17.0, 20.0, 0.0, 0.0),
                    child: Text('Selamat Datang',
                        style: TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////// TEKS INPUT UNTUK LOGIN //////////////////////////////////////////////////////////////////////////////////////////////
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child : Form(
                  key : formkey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
=======
                    padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                    child: Text('Selamat Datang',
                        style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold)),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 250.0, 0.0, 0.0),
                    child: Text('Setara.id',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink)),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
<<<<<<< HEAD
                              borderSide: BorderSide(color: Colors.pink))
                      ),
                          controller : _controlleremail,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Email tidak boleh kosong';
                            }
                            return null;
                          },
                      onSaved: (String value) {
                        email = value;
                      },
                    ),

                    SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
=======
                              borderSide: BorderSide(color: Colors.pink))),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
<<<<<<< HEAD
                              borderSide: BorderSide(color: Colors.pink))
                      ),
                      controller : _controllerpassword,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Password tidak Boleh Kosong';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        password = value;
                      },
                    ),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////// BUTTOM LOGIN ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

=======
                              borderSide: BorderSide(color: Colors.pink))),
                      obscureText: true,
                    ),
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
                    SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.pinkAccent,
                        color: Colors.pink,
                        child: GestureDetector(
                          onTap: () {
<<<<<<< HEAD

                            if (!formkey.currentState.validate()){
                              return;
                            }
                            formkey.currentState.save();

=======
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder:(context){
                                    return Dashboard();
                                  },
                              ),
                            );
                          },
<<<<<<< HEAD

=======
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
<<<<<<< HEAD
                )
                ),
            ),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////// TEKS DAN BUTTOM PEMBUATAN AKUN BARU ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

=======
                )),
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Belum Punya Akun ?',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: Text(
                    'Buat Akun Baru',
                    style: TextStyle(
                        color: Colors.pink,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
