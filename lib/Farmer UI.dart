import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Corusel.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];


void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Freshzone(),
      )
  )
  );
}

class Freshzone extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(backgroundColor: Colors.green[700],
           floating: true,
           pinned: true,
           expandedHeight: 130,
           title: Text("FARMER FRESH ZONE"),
           actions: [
             Row(
               children: [
                 IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined)),
                 Text("Kochi"),
               ],
             ),
           ],
           bottom: AppBar(backgroundColor: Colors.green[700],
             elevation: 0,
             title: Container(
               decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
               child: TextField(
                 decoration: InputDecoration(
                   hintText: "Search for vegitable and fruits..",prefixIcon: Icon(Icons.search)
                 ),
               ),
             ),
             ),
           ),
          SliverList(delegate: SliverChildListDelegate([
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 20),
                    child: Container(
                      child: Text("Vegitables"),decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),border: Border.all(color: Colors.green)),
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.only(left: 60,top: 20),
                     child: Container(child: Padding(
                       padding: const EdgeInsets.only(left: 10,right: 10),
                       child: Text("Fruits"),
                     ),decoration:BoxDecoration(borderRadius: BorderRadius.circular(80),border: Border.all(color: Colors.green)),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 90,top: 20),
                     child: Container(child: Text("Exotic Cuts"),decoration: BoxDecoration(borderRadius:BorderRadius.circular(80),border: Border.all(color: Colors.green)),
                   ),
                   ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(

                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: imageSliders,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11,right: 11),
              child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),width: 100,height: 100,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 20),
                      child: Column(
                        children: [
                          Icon(Icons.timer),
                          Text("30 mins policy"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 20),
                      child: Column(
                        children: [
                          Icon(Icons.track_changes),
                          Text("Tracebility"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55,top: 20),
                      child: Column(
                        children: [
                          Icon(Icons.home_filled),
                          Text("Surronding"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ])),


       ],
     ),
       bottomNavigationBar: BottomNavigationBar(

           selectedItemColor: Colors.black  ,
           items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
    BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Account"),
           ]),
   );
  }

}