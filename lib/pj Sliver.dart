import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Sliverpj (),
    ),
  ));
}


class Sliverpj extends StatefulWidget{

  @override
  State<Sliverpj> createState() => _SliverpjState();
}

class _SliverpjState extends State<Sliverpj> {
  int index=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(backgroundColor: Colors.white,
           title: Text("Conversation",style: TextStyle(color: Colors.black,fontSize: 35),),
          actions: [
            TextButton(onPressed: (){}, child: Text("+ Add new",style: TextStyle(color: Colors.red),)),
          ],
    bottom: AppBar(backgroundColor: Colors.white,
    elevation: 0,
    title: Container(
    decoration: BoxDecoration(color: Colors.white,),
    child: TextField(
    decoration: InputDecoration(hintText: "search something",
    suffixIcon: Icon(Icons.search),
    ),
         ),
    )),),
         SliverList(delegate: SliverChildListDelegate(
             [

               ListTile(
                 leading:  CircleAvatar(backgroundImage: AssetImage("assets/Black.png"),),
                 title: Text("Nehla"),
                 subtitle: Text("9847724872"),
               ),
               ListTile(
                 leading:  CircleAvatar(backgroundImage: AssetImage("assets/Black.png"),),
                 title: Text("Nehla"),
                 subtitle: Text("9847724872"),
               ),
               ListTile(
                 leading:  CircleAvatar(backgroundImage: AssetImage("assets/Black.png"),),
                 title: Text("Nehla"),
                 subtitle: Text("9847724872"),
               ),
               ListTile(
                 leading:  CircleAvatar(backgroundImage: AssetImage("assets/Black.png"),),
                 title: Text("Nehla"),
                 subtitle: Text("9847724872"),
               ),
               ListTile(
                 leading: CircleAvatar(backgroundImage: AssetImage("assets/Black.png"),),
                 title: Text("Nehla"),
                 subtitle: Text("9847724872"),
               ),
               ListTile(
                 leading: CircleAvatar(backgroundImage: AssetImage("assets/Black.png"),),
                 title: Text("Nehla"),
                 subtitle: Text("9847724872"),
               ),
               ListTile(
                 leading:  CircleAvatar(backgroundImage: AssetImage("assets/Black.png"),),
                 title: Text("Nehla"),
                 subtitle: Text("9847724872"),
               ),
               ListTile(
                 leading:  CircleAvatar(backgroundImage: AssetImage("assets/Black.png"),),
                 title: Text("Nehla"),
                 subtitle: Text("9847724872"),
               ),
               ListTile(
                 leading:  CircleAvatar(backgroundImage: AssetImage("assets/Black.png"),),
                 title: Text("Nehla"),
                 subtitle: Text("9847724872"),
               ),
             ]
         ))
     ],
     ),
       bottomNavigationBar:  BottomNavigationBar(backgroundColor: Colors.white,
           type: BottomNavigationBarType.shifting,
           selectedItemColor: Colors.black  ,unselectedItemColor: Colors.red,
         currentIndex: index,
         onTap: (tapndx){
           setState(() {
             index=tapndx;
           });
         },
           items: [
           BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
           BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp),label: "Channels"),
    BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
    ],),);
  }
}