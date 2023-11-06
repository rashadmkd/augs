import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Lottieee (),
    ),
  ));
}


class Lottieee extends StatefulWidget{
  @override
  State<Lottieee> createState() => _LottieeeState();
}

class _LottieeeState extends State<Lottieee> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [
         Lottie.asset("Animation/Animation.json"),
         Lottie.network(""),
       ],
     ),
   );
  }
}
