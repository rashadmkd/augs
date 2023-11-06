import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Slivers (),
    ),
  ));
}


class Slivers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 150,// app bar ne thazhatheek erakkan.
            flexibleSpace: Container(child: Text("vsf"),color: Colors.red),
            title: Text("Example"),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(color: Colors.white,

                ),
                child: TextField(
                  decoration: InputDecoration(hintText: "search something",
                  suffixIcon: Icon(Icons.search),
                  ),

                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Rashad"),
                subtitle: Text("9847724872"),
              ),
            ]
          ))

        ],
      ),
    );
  }

}