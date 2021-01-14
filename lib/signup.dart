import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String _name;
  String _email;
  String _password;
  String _address;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget _buildName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Nama'),
      validator: (String value) {
        if(value.isEmpty){
          return 'Nama tidak boleh kosong';
        }
      },
      onSaved:(String value) {
        _name = value;
      },
    );
  }

  Widget _buildemail(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'E-Mail'),
      validator: (String value) {
        if(value.isEmpty){
          return 'Email tidak boleh kosong';
        }
      },
      onSaved:(String value) {
        _email = value;
      },
    );
  }

  Widget _buildpassword(){

    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(labelText: 'Password'),
      validator: (String value) {
        if(value.isEmpty){
          return 'Pasword tidak boleh kosong';
        }
      },
      onSaved:(String value) {
        _name = value;
      },
    );
  }

  Widget _buildaddress(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Alamat'),
      validator: (String value) {
        if(value.isEmpty){
          return 'Alamat tidak boleh kosong';
        }
      },
      onSaved:(String value) {
        _name = value;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xFFF9EFEB),
        resizeToAvoidBottomPadding: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top:50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ImageIcon(
                        AssetImage('assets/setara.png'),
                        size: 110,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(145.0, 160.0, 0.0, 0.0),
                  child: Text(
                    'Buat',
                    style:
                    TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50.0, 200.0, 0.0, 0.0),
                  child: Text(
                    'Akun Baru ',
                    style:
                    TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, top: 10, right: 16),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildName(),
                  _buildemail(),
                  _buildpassword(),
                  _buildaddress()

                ],
              ),
            ),
          ),

                  Container(
                      padding: EdgeInsets.only(left: 16, top: 35, right: 16),
                      height: 70.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(60.0),
                        shadowColor: Colors.pinkAccent,
                        color: Colors.pink,
                        elevation: 7.0,
                        child: InkWell(
                          onTap: () {
                            if (!_formKey.currentState.validate()){
                              return;
                            }
                            _formKey.currentState.save();

                            print(_name);

                          },
                          child: Center(
                            child: Text(
                              'Buat Akun',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),

                            ),
                          ),
                        ),
                      )
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16, top: 30, right: 16),
                    height: 65.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child:

                        Center(
                          child: Text('Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat')),
                        ),


                      ),
                    ),
                  ),
                ],


        ));
  }
}
