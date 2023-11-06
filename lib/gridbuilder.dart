import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
 runApp(MaterialApp(home: Gridbuilder(),));
}


class Gridbuilder extends StatelessWidget{
  var image=["assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png"];
  var name=["Facebook","A10 Network INC","Intel corp","Advance micro device","Apple Inc","Amazon.com INC","Anaz","Rahul","Mishab","Akash","Sayand"];
  var rate=["€20","€30","€40","€50","€60","€70","€80","€90","€100","€110","€120"];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(context,index){
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
      ),
    );
    },itemCount: name.length,
  ));
  }

}