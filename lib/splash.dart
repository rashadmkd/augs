

import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Myapp(),
      )
  ));
}
class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyappState();

}

class MyappState extends State<Myapp>{
  @override
void initState(){
    Timer(Duration(seconds: 5), () {                 //screen stand time
      Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context)=>Loginpage()));
});
    super.initState();
}

  @override
    Widget build(BuildContext context){
      return Scaffold(
        body: Container(decoration: BoxDecoration(color: Colors.blue.shade800),  //BG photo and multiple color akkan.also single color
            // begin: Alignment.topCenter,              //color nde alignment ready akkaan.
            //end: Alignment.centerLeft,
             // colors: [Colors.black,Colors.green.shade800]
            //color:Colors.black,  //BG color change cheyyan //LinearGradient,BoxDecoration
          child: Padding(
            padding: const EdgeInsets.only(top: 250,right: 50,left: 50),
            child: Center(
              child: Column(
                children: [
                  Image(image: AssetImage("assets/Facebook.png"),height: 100,width: 100,),
                  Text("Facebook",
                        style: TextStyle(
                          fontSize: 30,color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.w600,
                        )
                  )
                ],
              )
            )
          )

        ),
      );
    }
  }





