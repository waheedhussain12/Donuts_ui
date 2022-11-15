import 'package:donuts_ui/tab/burger_page.dart';
import 'package:donuts_ui/tab/donuts_page.dart';
import 'package:donuts_ui/tab/pancake_page.dart';
import 'package:donuts_ui/tab/pizza_page.dart';
import 'package:donuts_ui/tab/smoothie_page.dart';
import 'package:donuts_ui/util/my_tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List<Widget> mytabs =[
  //donuts tab
  MyTabs(iconPath: 'assets/doughnuttb.png'),
  //burger tab
  MyTabs(iconPath: 'assets/burgertb.png'),
  //smoothie  tab
  MyTabs(iconPath: 'assets/avocadotb.png'),
  //pancake tab
  MyTabs(iconPath: 'assets/pancakestb.png'),
  //pizza tab

  MyTabs(iconPath: 'assets/pizzatb.png'),
];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Icon(Icons.menu,color: Colors.grey.shade800,size: 36,),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Icon(Icons.person,color: Colors.grey.shade800,size: 36,),
            ),
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 18),
              child: Row(mainAxisAlignment:
              MainAxisAlignment.start,
                children: [
                RichText(

                    text:
                    TextSpan(

                  children: [
                    TextSpan(text: 'I want to ',style: TextStyle(
                      color: Colors.black54,fontSize: 24
                    )),
                    TextSpan(text: 'EAT',style: TextStyle(
                        color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold
                    ))
                  ]
                ))  ,
                ],
              ),
            ),
            TabBar(tabs: mytabs),
            //tab bar view
            Expanded(
              child: TabBarView(children: [
                //donuts page
                    Donuts(),

                //burger page
               Burger(),
                //smoothie  page
                Smoothie(),
                //pancake page
                  Pancake(),
                //pizza page
              Pizza(),
              ]
              ),
            ),

          ],
        ),
      ),
    );
  }
}
