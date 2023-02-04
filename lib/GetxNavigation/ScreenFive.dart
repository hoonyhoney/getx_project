import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/GetxNavigation/ScreenThree.dart';

import 'ScreenTwo.dart';

class ScreenFive extends StatefulWidget {
  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {

  bool _visible= true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: Text('Hedaer'),
              decoration: BoxDecoration(

                color: Colors.blue,
              ),

            ),
            ListTile(
              title: Text('Item 1'),
              onTap: (){
                Get.to(ScreenThree());
              },
            ),
            ListTile(
              title: Text('Item 1'),
            ),
            ListTile(
              title: Text('Item 1'),
            ),
          ],
        )
      ),
      appBar: AppBar(title: Text("Drawer"),),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
