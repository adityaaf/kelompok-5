import 'package:flutter/material.dart';
import 'package:tugas_uts/edit_profile.dart';
import 'package:tugas_uts/laporan.dart';
import 'package:tugas_uts/berita.dart';
import 'package:tugas_uts/event.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.transparent,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)
                ),
                color: Colors.white
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width /2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.analytics, color:Colors.pink),
                              onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context){
                                        return Berita();
                                      }
                                  ),
                                );
                              }
                          ),
                          IconButton(
                              icon: Icon(Icons.menu_book_outlined, color:Colors.pink),
                              onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context){
                                        return Event();
                                      }
                                  ),
                                );
                              }
                          )
                        ],
                      )
                  ),
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width /2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.admin_panel_settings, color:Colors.pink),
                              onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context){
                                        return Laporan();
                                      }
                                  ),
                                );
                              }
                          ),
                          // Icon(Icons.person, color: Colors.pink)
                          IconButton(
                            icon: Icon(Icons.person, color:Colors.pink),
                      onPressed: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context){
                                     return EditProfile();
                                    }
                                ),
                              );
                      }
                          )
                        ],
                      )
                  ),
                ]
            )
        )
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> cf8ab92eeb751970e7e3d65a63c68bab1755dd82
