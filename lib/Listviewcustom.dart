import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home:  Listviewcustoms(),
    ),
  ));
}

class Listviewcustoms extends StatelessWidget{
  var name=["Facebook","A10 Network INC","Intel corp","Advance micro device","Apple Inc","Amazon.com INC","Anaz","Rahul","Mishab","Akash","Sayand"];
  var icon=["F","A","I","I","A","A","A","R","M","A","s"];
  var phone=["647386","62457816","461786861","6265250","564111113460","652`65370","761880","76197890","6178382100","84731809110","67167120"];


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Listviewcustoms"),backgroundColor: Colors.blue,),
    body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
        (context,index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Text(icon[index])),
              title: Text(name[index]),
              trailing: Text(phone[index]),
            ),
          );
        },childCount: name.length,
    ),
    ),
  );
  }

}