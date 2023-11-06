import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Staggered (),
    ),
  ));
}


class Staggered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
              color: Colors.cyan,
            )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1, mainAxisCellCount: 3, child: Container(
              color: Colors.red,
            )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1, mainAxisCellCount: 3, child: Container(
              color: Colors.blue[800],
            )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2, mainAxisCellCount: 1, child: Container(
              color: Colors.green[400],
            )),

          ],
        ),
      ),
    );
  }
}