import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home:  Listviewbuild(),
    ),
  ));
}


class Listviewbuild extends StatelessWidget{
  var name=["Facebook","A10 Network INC","Intel corp","Advance micro device","Apple Inc","Amazon.com INC","Anaz","Rahul","Mishab","Akash","Sayand"];
  var icon=["F","A","I","I","A","A","A","R","M","A","s"];
  var amount=["€20","€30","€40","€50","€60","€70","€80","€90","€100","€110","€120"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listviewbuild"),),
    body: ListView.builder(itemBuilder: (context,index){
      return Card(
        child: ListTile(
          leading: CircleAvatar(child: Text(icon[index]),backgroundColor: Colors.cyan,),
          title: Text(name[index]),
          trailing: Text(amount[index]),
        ),
      );

    },itemCount: name.length,
    ));
  }

}