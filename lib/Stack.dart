import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Stackeg (),
    ),
  ));
}

class Stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         Center(child: Container(color: Colors.red,height: 350,width: 350,)),
         Positioned(child: Container(color: Colors.cyan,height: 280,width: 300),top: 300,left: 50, ),
         Positioned(child: Container(color: Colors.green,height: 220,width: 260),top: 300,left: 50,),
         Positioned(child: Container(color:Colors.teal ,height: 180,width: 220),top: 300,left: 50,),
       ],
     ),

   );
  }

}