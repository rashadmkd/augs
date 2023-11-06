import 'package:augs/CustomsWidgets.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CustomsWidgets.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: custme (),
    ),
  ));
}

class custme extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("vfs"),
     ),



     body: Container(
       child: CustmWid(
         onpress: (){

         },
         img: Image(image: AssetImage("assets/ppppp.png"),),
         name: Text("Rashad " ),
         colors: Colors.cyan,
       ),
     ),
   );
  }

}