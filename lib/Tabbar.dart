import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Gridviewcount.dart';
import 'Listsprtd.dart';
import 'homepage.dart';
import 'loginpage 2.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Tabbar (),
    ),
  ));
}


class Tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(
       appBar: AppBar(title: Text("WhatsApp"),backgroundColor: Colors.green[900],
       actions: [
         Padding(
           padding: const EdgeInsets.only(right: 10),
           child: Icon(Icons.camera_alt),
         ),
         Padding(
           padding: const EdgeInsets.only(right: 5),
           child: Icon(Icons.search),
         ),
         PopupMenuButton(itemBuilder: (context){
           return[
             PopupMenuItem(child: Text("Settings"),),
             PopupMenuItem(child: Text("Help")),
             PopupMenuItem(child: Text("Invite")),
           ];
      },),
       ],
         bottom: TabBar(tabs: [
           Tab(
             icon: Icon(Icons.camera_alt),
           ),
           Tab(child: Text("chats"),),
           Tab(child: Text("updates"),),
           Tab(child:Text("calls") ,),
         ],),
       ),
       body: TabBarView(children: [
         Listseparated(),
         Gridviewcount(),
         Login_with_valid(),
         Homepage(),


       ],),

     ),
   );
  }

}