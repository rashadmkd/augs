import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home:  Listviewsepareted(),
    ),
  ));
}

class Listviewsepareted extends StatelessWidget{
  var name =["List item 01","List item 02","List item 03","List item 04","List item 05","List item 06","List item 07","List item 07","List item 08","List item 09","List item 10","List item 11",];
  var text=["separator01","separator02","separator03","separator04","separator05","separator06","separator07","separator08","separator09","separator10","separator11",];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
  appBar: AppBar(title: Text("List view separated()"),backgroundColor: Colors.blue[800],
  ),
   body: ListView.separated(itemBuilder:(context,index)
   {
     return Card(
       child: ListTile(
         title: Text(name[index])),);
     },

   separatorBuilder:(context,index)
   {
     return Container(
       child: Text(text[index]),
       color: Colors.amber,
     );
   },itemCount: name.length,

   ));
  }

}