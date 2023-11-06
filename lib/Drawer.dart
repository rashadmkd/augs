import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Drawereg (),
    ),
  ));
}


class Drawereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Accounts"),backgroundColor:Colors.blue,),
    drawer: Drawer(
      child:ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/Black.png"),fit: BoxFit.fill)),
            accountName: Text("Rashad.k"),
              accountEmail: Text("rashad12103@gmail.com"),
          currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/wwww.png"),),
            otherAccountsPictures: [
              CircleAvatar(backgroundImage: AssetImage("assets/wwww.png"),),
            ],
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.design_services),
            title: Text("Service"),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("About"),
          ),
          Divider(thickness: 1,color: Colors.teal,),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
          ),
          Divider(thickness: 2,color: Colors.black,),
        ],
      ),
    ),
  );
  }

}