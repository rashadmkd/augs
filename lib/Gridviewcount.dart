import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home:  Gridviewcount(),
    ),
  ));
}

class Gridviewcount extends StatelessWidget{
  var image=["assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png"];
  var name=["Facebook","A10 Network INC","Intel corp","Advance micro device","Apple Inc","Amazon.com INC","Anaz","Rahul","Mishab","Akash","Sayand"];
  var rate=["€20","€30","€40","€50","€60","€70","€80","€90","€100","€110","€120"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,
      children:List.generate(10, (index) {
        return Card(
          child: Column(
              children: [
          Expanded(child: Image(image: AssetImage(image[index]),)),
        Row(
        children: [
        Text(name[index]),
        SizedBox(width: 100,),
        Text(rate[index]),
        ],
        ),
        ],
          ));
    },
      ),
      ));
  }

}