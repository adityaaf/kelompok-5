import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tugas_uts/dashboard.dart';
import 'package:tugas_uts/main.dart';
import 'package:shared_preferences/shared_preferences.dart';



class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Edit Profil",
      home: EditProfilePage(),
    );
  }
}


class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;
  TextEditingController _txtnama = new TextEditingController();
  TextEditingController _txtemail = new TextEditingController();
  TextEditingController _txtpassword = new TextEditingController();
  TextEditingController _txtalamat = new TextEditingController();


  File _image;
  String _retrieveDataError;
  dynamic _pickImageError;
  PickedFile _imageFile;
  String base64Image;
  final ImagePicker _picker = ImagePicker();

  Future getImage(bool isCamera) async {
    File image;
    final picker = ImagePicker();
    if (isCamera) {
      final image = await picker.getImage(source: ImageSource.camera);
    } else {
      final image = await picker.getImage(source: ImageSource.gallery);
    }
    setState(() {
      _image = image;
    });
  }

  _data() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print('Nama' + _txtnama.text);
    await prefs.setString('Nama', _txtnama.text);
    await prefs.setString('email', _txtemail.text);
    await prefs.setString('password', _txtpassword.text);
    await prefs.setString('alamat', _txtalamat.text);
  }

  _loaddata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var tmpnama = await prefs.getString('Nama');
    var tmpemail = await prefs.getString('email');
    var tmppassword = await prefs.getString('password');
    var tmpalamat = await prefs.getString('alamat');
    setState(() {
      _txtnama.text = tmpnama;
      _txtemail.text = tmpemail;
      _txtpassword.text = tmppassword;
      _txtalamat.text = tmpalamat;
    });
  }

  String _name;
  String _email;
  String _password;
  String _address;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _loaddata();
    // _txtnama.text = 'KEKEY PUTRI';
    // _txtemail.text = 'kekey@gmail.com';
    // _txtpassword.text = 'aduhcantik';
    // _txtalamat.text = 'Perumahan Jonggol, Jakarta';


    super.initState();
  }

  Widget _buildName() {
    return TextFormField(
      controller: _txtnama,
      decoration: InputDecoration(labelText: 'Nama'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Nama tidak boleh kosong';
        }
      },
      onSaved: (String value) {
        // print(value);
        _txtnama.text = value;
        _name = value;
      },
    );
  }

  Widget _buildemail() {
    return TextFormField(
      controller: _txtemail,
      decoration: InputDecoration(labelText: 'E-Mail'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email tidak Valid';
        }
      },
      onSaved: (String value) {
        _txtemail.text = value;
        _email = value;
      },
    );
  }

  Widget _buildpassword() {

    return TextFormField(
      controller: _txtpassword,
      obscureText: true,
      decoration: InputDecoration(labelText: 'Password'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Pasword tidak boleh kosong';
        }
      },
      onSaved: (String value) {
        _txtpassword.text = value;
        _password = value;
      },
    );
  }

  Widget _buildaddress() {
    return TextFormField(
      controller: _txtalamat,
      decoration: InputDecoration(labelText: 'Alamat'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Alamat tidak boleh kosong';
        }
      },
      onSaved: (String value) {
        _txtalamat.text = value;
        _address = value;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 5,

        leading:
        IconButton(
            icon: Icon(Icons.arrow_back_sharp, color: Colors.white),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return Dashboard();
                    }
                ),
              );
            }
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "Edit Profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    showImage(),
                    Positioned(
                      top: 155,
                        bottom: 0,
                        right: 35,
                        child: Container(
                        height: 100,
                          width: 50,
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                          width: 4,
                            color: Theme
                          .of(context)
                          .scaffoldBackgroundColor,),
                          color: Colors.pink,
                          ),
                          child:
                          IconButton(
                            icon: Icon(Icons.photo_library_rounded, color: Colors.white,),
                            onPressed: () {
                              chooseImageGalery();
                            },
                          ),
                        ),
                    ),

                    Positioned(
                      top: 155,
                      bottom: 0,
                      left: 30,
                      child: Container(
                        height: 80,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Theme
                                .of(context)
                                .scaffoldBackgroundColor,),
                          color: Colors.pink,
                        ),
                        child:
                        IconButton(
                          icon: Icon(Icons.camera_alt_sharp, color: Colors.white,),
                          onPressed: () {
                            chooseImageCamera();
                          },
                        ),
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

              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  RaisedButton(
                    onPressed: () async {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }

                      SharedPreferences prefs = await SharedPreferences
                          .getInstance();
                      print('Nama' + _txtnama.text);
                      await prefs.setString('Nama', _txtnama.text);
                      await prefs.setString('email', _txtemail.text);
                      await prefs.setString('password', _txtpassword.text);
                      await prefs.setString('alamat', _txtalamat.text);

                      _formKey.currentState.save();
                      // print(_name);
                      // print(_email);
                      // print(_password);
                      // print(_address);
                    },
                    color: Colors.pink,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SIMPAN",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      _data();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return MyApp();
                          }
                          )
                      );
                    },
                    color: Colors.pink,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "LOG OUT ",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  chooseImageGalery() async {
        try {
            var pickedFile = await _picker.getImage(
                source: ImageSource.gallery,
            );
            setState(() {
                _imageFile = pickedFile;
                base64Image = base64Encode(File(_imageFile.path).readAsBytesSync());
            });
            } catch (e) {
            setState(() {
                _pickImageError = e;
            });
        }
    }

    chooseImageCamera() async {
        try {
            var pickedFile = await _picker.getImage(
                source: ImageSource.camera,
            );
            setState(() {
                _imageFile = pickedFile;
                base64Image = base64Encode(File(_imageFile.path).readAsBytesSync());
            });
        } catch (e) {
            setState(() {
                _pickImageError = e;
            });
        }
    }

    Future<void> retrieveLostData() async {
        final LostData response = await _picker.getLostData();
        if (response.isEmpty) {
        return;
        }
        if (response.file != null) {
        setState(() {
            _imageFile = response.file;
            base64Image = base64Encode(File(_imageFile.path).readAsBytesSync());
        });
        } else {
        _retrieveDataError = response.exception.code;
        }
    }

    Widget previewImage() {
        if (_imageFile != null) {
          return  Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 8,
                  color: Theme
                      .of(context)
                      .scaffoldBackgroundColor),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 5,
                    color: Colors.pink.withOpacity(0.60),
                    offset: Offset(0, 8))
              ],
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: FileImage(
                  File(_imageFile.path)
                )
              )
            ),
          );
        } else {
          return  Container(
            width: 180,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 8,
                  color: Theme
                      .of(context)
                      .scaffoldBackgroundColor),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 5,
                    color: Colors.pink.withOpacity(0.50),
                    offset: Offset(0, 5))
              ],
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/adit.JPG",
                  ),
              )
            ),
          );
        }
    }

    Widget showImage() {
        return FutureBuilder<void>(
        future: retrieveLostData(),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
            switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
                return const Text(
                'You have not yet picked an image.',
                textAlign: TextAlign.center,
                );
            case ConnectionState.done:
                
                return previewImage();
            default:
                if (snapshot.hasError) {
                return Text(
                    'Pick image/video error: ${snapshot.error}}',
                    textAlign: TextAlign.center,
                );
                } else {
                return const Text(
                    'You have not yet picked an image.',
                    textAlign: TextAlign.center,
                );
                }
            }
        },
        );
    }
}