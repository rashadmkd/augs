import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustmWid extends StatelessWidget{
  final Text ?name;
  final Color ?colors;
  final Image ?img;
  VoidCallback ?onpress;

 // CustmWid({ required this.text,required this.colors,required this.img,required this.onpress});
  CustmWid( {this.name, this.colors, this.img, required this.onpress});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Card(
       color: colors,
       child: ListTile(
         leading: img,
         title: name,
         onTap: onpress,
       ),
     ),
   );
  }

}