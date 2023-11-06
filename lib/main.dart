

import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false,
        home: Myapp(),
      )
  );
}
class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyappState();

}

class MyappState extends State<Myapp>{
  @override
  void initState(){
    Timer(Duration(seconds: 5), () {                 //screen stand time
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(  //BG photo and multiple color akkan.also single color
          // begin: Alignment.topCenter,              //color nde alignment ready akkaan.
          //end: Alignment.centerLeft,
            colors: [Colors.black,Colors.green.shade800]
          //color:Colors.black,  //BG color change cheyyan //LinearGradient,BoxDecoration
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 250,right: 50,left: 50),
          child: Center(
            child: Column(
              children: [
                Image(image: AssetImage("assets/Alecive-Flatwoken-Apps-Whatsapp-C.512.png"),height: 100,width: 100,),
                Text(
                  "What'sApp",
                  style: TextStyle(
                    fontSize: 30,color: Colors.green,fontStyle: FontStyle.italic,fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





