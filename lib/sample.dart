import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: sample(),
      )));
}

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          color: Colors.cyan,
          child: Padding(
            padding: const EdgeInsets.only(top: 300,left: 50,right: 50),
            child: Center(
              child: Column(
                children: [
                  Image(image: AssetImage("assets/Custom-Icon-Design-Flatastic-7-Football-pitch.512.png"),height: 100,width: 100,),
                  Text(
                    "Let's Start..",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red[900],
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}