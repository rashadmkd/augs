import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Gridbuilder (),
    ),
  ));
}


class Gridbuilder extends StatelessWidget{
  var image=["assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png","assets/Facebook.png"];
  var name=["Facebook","A10 Network INC","Intel corp","Advance micro device","Apple Inc","Amazon.com INC","Anaz","Rahul","Mishab","Akash","Sayand"];
  var rate=["€20","€30","€40","€50","€60","€70","€80","€90","€100","€110","€120"];



  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),
         childrenDelegate: SliverChildBuilderDelegate((context,index){
          /* return Card(
           child: ListTile(
           leading:CircleAvatar(backgroundImage: AssetImage(image[index]),) ,
    trailing:Icon(Icons.shopping_cart) ,
    title:Text(name[index],style: TextStyle(fontStyle: FontStyle.italic),),

    subtitle: Text(rate[index]),
           ),
           );*/
           return Container(color: Colors.cyan,
             child: Column(
               children: [
                 Expanded(child: Image(image: AssetImage(image[index]),fit: BoxFit.fill,)),
                 SizedBox(width: 100,),
                 Row(
                   children: [
                     Text(name[index]),
                   ],
                 ),
                 SizedBox(width: 5,),
                 Text(rate[index]),
               ],
             ),
           );
           },childCount: name.length,
    ),
     )
   );
  }

}