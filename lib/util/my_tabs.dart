import 'package:flutter/material.dart';
class MyTabs extends StatelessWidget {
  final String iconPath;
  const MyTabs({Key? key,required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child:Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12)
        ),
        height: 80,
        child: Image.asset(iconPath,
        color: Colors.grey.shade600,),
      ),
    );
  }
}
