import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: tab_and_bottom (),
    ),
  ));
}


class tab_and_bottom extends StatefulWidget{
  @override
  State<tab_and_bottom> createState() => _tab_and_bottomState();
}

class _tab_and_bottomState extends State<tab_and_bottom> {
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
    BottomNavigationBarItem(icon:Icon(Icons.fastfood_sharp),label: "Lunches"),
    BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Cart"),
    BottomNavigationBarItem(icon:Icon(Icons.account_box),label: "Account"),
    ],),

   );
  }
}