import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context) =>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Hotelui(),
      )
  ));
}
class Hotelui extends StatefulWidget{
  @override
  State<Hotelui> createState() => _HoteluiState();
}

class _HoteluiState extends State<Hotelui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          leading: IconButton(
            onPressed: (){},icon: Icon(Icons.menu),
          ),
          centerTitle: true,
          title: Column(
            children: [
              Text(
                "Type Your Location",style: TextStyle(fontSize: 20),
              )
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, icon:Badge(
                isLabelVisible: true,
                label: Text('2'),
                child: Icon(Icons.favorite_border)),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: Padding(
              padding: EdgeInsets.only(left: 16.0,
                  right: 16.0,
                  bottom: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Location",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic,fontSize: 15,),
                  prefixIcon: Icon(Icons.search,),

                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white70,
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(child: Container(color: Colors.red,height: 90,width: 110,child: Column(
                        children: [
                          Center(child: Icon(Icons.hotel,size: 50)),
                          Center(child: Text("Hotel",style: TextStyle(fontSize: 20),)),
                        ],
                      ),),top: 30,left: 20,),
                      Positioned(child: Container(color: Colors.blueAccent,height: 90,width: 110,child: Column(
                        children: [
                          Center(child: Icon(Icons.restaurant,size: 50,)),
                          Center(child: Text("Restuarent",style: TextStyle(fontSize: 20),)),
                        ],
                      ),),top: 30,left: 140,),
                      Positioned(child: Container(color: Colors.yellow,height: 90,width: 110,child: Column(
                        children: [
                          Center(child: Icon(Icons.local_cafe,size: 50,),),
                          Center(child: Text("Cafe",style: TextStyle(fontSize: 20),),),
                        ],
                      ),),top: 30,left: 260,),

                    ],
                  ),
                ),
                Container(decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.only(top:30,),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15,),
                        child: Image(image: NetworkImage("https://cf.bstatic.com/xdata/images/hotel/max1024x768/148362842.jpg?k=a5f9a1723e141d1fde0655704ac8ebcbb4b9ff659dd8540848b8dfff2e561c64&o=&hp=1"),),
                      ),
                      Column(
                        children: [
                          Align(alignment:Alignment.centerLeft,child:Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text("Awesome room near Kakkanad",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                                ],
                              )),),
                          Align(alignment:Alignment.centerLeft,child:Padding(
                              padding: EdgeInsets.only(left: 20,top: 3),
                              child: Text("Kakkanad,kochi",style: TextStyle(fontSize: 15),)),),
                          Align(alignment: Alignment.centerLeft,child:Padding(
                            padding: EdgeInsets.only(left: 15),

                            child: Row(
                              children: [
                                Icon(Icons.star,color: Colors.green[500],),
                                Icon(Icons.star,color: Colors.green[500],),
                                Icon(Icons.star,color: Colors.green[500],),
                                Icon(Icons.star,color: Colors.green[500],),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.green[500],),
                                    Text("  (250 reviews)")
                                  ],
                                ),
                              ],
                            ),
                          ),
                          ),],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                        child: Image(image: NetworkImage("https://media.istockphoto.com/id/1370825295/photo/modern-hotel-room-with-double-bed-night-tables-tv-set-and-cityscape-from-the-window.jpg?s=612x612&w=0&k=20&c=QMXz9HJVhU-8MtBYyeJxtqLz90j7r0SrR6FTWniPkgc=",),),
                      ),
                      Column(
                        children: [
                          Align(alignment:Alignment.centerLeft,child:Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text("Beautiful room in Vytila",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),),
                          Align(alignment:Alignment.centerLeft,child:Padding(
                              padding: EdgeInsets.only(left: 20,top: 3),
                              child: Text("Vytila,Kochi",style: TextStyle(fontSize: 15),)),),
                          Align(alignment: Alignment.centerLeft,child:Padding(
                            padding: EdgeInsets.only(left: 15),

                            child: Row(
                              children: [
                                Icon(Icons.star,color: Colors.green[500],),
                                Icon(Icons.star,color: Colors.green[500],),
                                Icon(Icons.star,color: Colors.green[500],),
                                Icon(Icons.star,color: Colors.green[500],),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.green[500],),
                                    Text("  (250 reviews)")
                                  ],
                                ),
                              ],
                            ),
                          ),
                          ),],
                      ),
                    ],
                  ),

                )
              ],
            ),
            ),
        );
    }
}