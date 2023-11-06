import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Gridviewcount.dart';
import 'Listsprtd.dart';
import 'homepage.dart';
import 'loginpage 2.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: bottomnavigation (),
    ),
  ));
}


class bottomnavigation extends StatefulWidget{
  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
     var screen=[
       Listseparated(),
       Gridviewcount(),
       Login_with_valid(),
       Homepage(),

     ];
  int index=2;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
     backgroundColor: Colors.green,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.black,unselectedItemColor: Colors.red,
      currentIndex: index,
      onTap: (tapndx){
       setState(() {
         index=tapndx;
       });
      },

      items: [

      BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon:Icon(Icons.favorite),label: "Favorite"),
      BottomNavigationBarItem(icon:Icon(Icons.account_box),label: "Account"),
      BottomNavigationBarItem(icon:Icon(Icons.logout),label: "Logout"),
    ],),
    body: screen[index],
  );
  }
}