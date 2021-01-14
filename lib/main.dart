import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'signup.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  String _email;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) =>  new SignupPage()
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

  final formkey = GlobalKey<FormState>();
  var _controlleremail = TextEditingController();
  String email = '';
  var _controllerpassword = TextEditingController();
  String password = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xFFF9EFEB),
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
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
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
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
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
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

                    SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.pinkAccent,
                        color: Colors.pink,
                        child: GestureDetector(
                          onTap: () {

                            if (!formkey.currentState.validate()){
                              return;
                            }
                            formkey.currentState.save();

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder:(context){
                                    return Dashboard();
                                  },
                              ),
                            );
                          },

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
                )
                ),
            ),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////// TEKS DAN BUTTOM PEMBUATAN AKUN BARU ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

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
