import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: StaggeredGrid(),));
}



class StaggeredGrid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:GridView.count(crossAxisCount: 4,
     children: [
       StaggeredGridTile.count(crossAxisCellCount: crossAxisCellCount, mainAxisCellCount: mainAxisCellCount, child: child)
       ],
     ) ,
   );
  }

}