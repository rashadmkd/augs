import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Gridview() ,
  debugShowCheckedModeBanner: false,));
}

class Gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       children: [
         Card(
           child: Image(image: AssetImage("assets/Facebook.png"),),
         ),
         Card(
           child: Image(image: AssetImage("assets/Facebook.png"),),
         ),
         Card(
           child: Image(image: AssetImage("assets/Facebook.png"),),
         ),
       ],
     ),
   );
  }

}