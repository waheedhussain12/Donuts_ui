import 'package:flutter/material.dart';
class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final  donutColor;
  final double borderRadius = 12;
  final String imageName;

   DonutTile({Key? key,
     required this.donutFlavor,
     required this.donutPrice,
     required this.donutColor,
     required this.imageName})
       : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: donutColor[100],
        ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end ,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: donutColor,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius)
                      ),
                    ),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('\$' +donutPrice,style: TextStyle(
                        color: donutColor[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0,vertical: 14.0),
              child: Image.asset(imageName),
            ),
             Text(donutFlavor,style: TextStyle(
               fontSize: 16,fontWeight: FontWeight.
                 bold
             ),),
              SizedBox(height: 4,),
            Text('Dunkins',style: TextStyle(
              color: Colors.grey.shade600
            ),),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite,color: Colors.pink.shade400,),
                  Icon(Icons.add,color: Colors.grey.shade800,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
