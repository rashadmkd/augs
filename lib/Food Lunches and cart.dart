import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: LunchesCart (),
    ),
  ));
}

class LunchesCart extends StatefulWidget{
  @override
  State<LunchesCart> createState() => _LunchesCartState();
}

class _LunchesCartState extends State<LunchesCart> {
  @override
  Widget build(BuildContext context) {
  return DefaultTabController(length: 4,
    child: Scaffold(
      appBar: AppBar(title: Text(""),
      bottom: TabBar(indicatorColor:Colors.white,labelPadding: EdgeInsets.only(left: 30),
      tabs: [
      Tab(child: Text("Lunches"),),
      Tab(child: Text("Carts"),),
      ],
      ),

      ),

    ),
  );
  }
}