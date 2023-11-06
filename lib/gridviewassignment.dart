import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:Gridviewassg() ,));
}

class Gridviewassg extends StatelessWidget{
  var name=["Home","Email","Alarm","Wallet","Backup","Book","Camera","Person","Print"];
  var color=[Colors.cyan,Colors.amber,Colors.blueGrey,Colors.brown,Colors.green,Colors.red,Colors.grey,Colors.teal,Colors.green];
  var icons=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera,Icons.person,Icons.print];


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.count(crossAxisCount: 3,
    children: List.generate(9, (index) {
      return Card(color: color[index],
              child: Column(
                children:[SizedBox(height: 50,),
                Icon(icons[index],size: 50,),
                  SizedBox(height: 20,),
                  Text(name[index]),
                ],
              ),
      );
  }
    ),
  ));
  }

}