import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ),
  ));
}


class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>homepagestate();


}
class homepagestate extends State<Homepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recents"),),
  body: ListView(
    children: [
      ListTile(
        leading:CircleAvatar( backgroundImage: AssetImage("assets/Alecive-Flatwoken-Apps-Whatsapp-C.512.png"),),
        title: Text ("Rahul"),
        subtitle: Text("8606611058"),
        trailing: Icon(Icons.call),
      ),
      ListTile(
        leading:CircleAvatar(backgroundImage: AssetImage("assets/Alecive-Flatwoken-Apps-Whatsapp-C.512.png"),),
        title: Text ("Anas"),
        subtitle: Text("8136857569"),
        trailing: Icon(Icons.call),
      ),
      ListTile(
        leading:CircleAvatar(backgroundImage: AssetImage("assets/Alecive-Flatwoken-Apps-Whatsapp-C.512.png"),),
        title: Text ("Rashad"),
        subtitle: Text("9876543670"),
        trailing: Icon(Icons.call),
      ),
      Card(color: Colors.blueGrey,
        child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage("assets/Alecive-Flatwoken-Apps-Whatsapp-C.512.png"),),
          title: Text ("Mishab"),
          subtitle: Text("9562120334"),
          trailing: Icon(Icons.call),
        ),
      ),
      ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage("assets/Alecive-Flatwoken-Apps-Whatsapp-C.512.png"),),
        title: Text ("Nehla",style: TextStyle(color: Colors.red),),
        subtitle: Text("8943493355",style: TextStyle(color: Colors.red),),
        trailing: Icon(Icons.call,color: Colors.red,),
      ),
    ],
  ),
    );
  }

}