import 'package:flutter/material.dart';

import '../util/donut_tile.dart';
class Donuts extends StatelessWidget {
   Donuts({Key? key}) : super(key: key);
List donutsOnSale = [
  ['Ice Cream', '36', Colors.blue,'assets/donut.png'],
  ['Strawberry', '45', Colors.red,'assets/donut2.png'],
  ['Grape Ape', '84', Colors.purple,'assets/donut3.png'],
  ['Choco', '95', Colors.brown,'assets/doughnut.png'],
];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
        padding: EdgeInsets.all(7),
        gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
    childAspectRatio: 1/1.5
    ),
        itemBuilder:
            (context,index){
      return DonutTile(
        donutFlavor: donutsOnSale[index][0],
        donutPrice: donutsOnSale[index][1],
        donutColor: donutsOnSale[index][2],
        imageName: donutsOnSale[index][3],
      );
        });
  }
}
