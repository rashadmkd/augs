import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: draweg (),
    ),
  ));
}

class draweg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(title: Text("Email"),),
   drawer: Drawer(
     child: ListView(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("assets/backgrnd.png"),fit: BoxFit.fill)),
          accountName: Text("Rashad.k"),
          accountEmail:  ListView(
            children: [
              Text("rashad12103@gmail.com"),
              Row(
                children: [
                  Text("15,534 ",style: TextStyle(color: Colors.black45),),
                  Text("Followers ",style: TextStyle(color: Colors.black45),),
                  Text("2,343",style: TextStyle(color: Colors.black45),),
                  Text("Following ",style: TextStyle(color: Colors.black45),),
                ],
              ),
            ],
          ) ,
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
          leading: Icon(Icons.message),
          title: Text("Message"),
        ),
        ListTile(
          leading: Icon(Icons.sync),
          title: Text("Sync"),
        ),
        ListTile(
          leading: Icon(Icons.restore_from_trash),
          title: Text("Trash"),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
        ),


        Divider(),
        Text("profile",style: TextStyle(color: Colors.black45),),
        ListTile(
          leading: Icon(Icons.login),
          title: Text("LogOut"),
        ),


        Divider(),
        Text("Communicate",style: TextStyle(color: Colors.black45),),
        ListTile(
          leading: Icon(Icons.share),
          title: Text("Share"),
        ),
        ListTile(
          leading: Icon(Icons.rate_review_rounded),
          title: Text("Rate us"),
        ),
      ],
     ),
   ),
 );
  }

}