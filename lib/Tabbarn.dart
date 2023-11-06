import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Tabbarn (),
    ),
  ));
}


class Tabbarn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 6,
     child: Scaffold(
       appBar: AppBar(title: Text("Greekforgreek"),
       backgroundColor: Color(0xff075E54),
         bottom: TabBar(
             isScrollable: true,
             indicatorColor: Colors.black,// icon nte underline varaan.
             unselectedLabelColor: Colors.red,//icon mme colour maraan.
             labelColor: Colors.cyan,//icon mme ulla colour.
             tabs: [
           Tab(icon: Icon(Icons.home),child: Text("Home"),),
           Tab(icon: Icon(Icons.account_box_outlined),child: Text("Account"),),
           Tab(icon: Icon(Icons.alarm),child: Text("Alarm"),),
            Tab(icon: Icon(Icons.keyboard),child: Text("Text"),),
           Tab(icon: Icon(Icons.accessibility_outlined),child: Text("person"),),
               Tab(icon: Icon(Icons.help),child: Text("Help"),),
         ]),
       ),
     ),
   );
  }

}