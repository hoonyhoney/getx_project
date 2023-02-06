import 'dart:math';

import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {

  bool _visible= true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                child: Text('Hedaer'),
              decoration: BoxDecoration(

                color: Colors.blue,
              ),

            ),
          ],
        )
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height:300),
           Center(
              child: AnimatedOpacity(
                opacity: _visible?  1.0 : 0.0,
                duration: Duration(milliseconds: 500),
                child: Container(
                  color: Colors.green,
                width: 200, height: 200,
                ),
              ),
            ),
            OutlinedButton(onPressed: (){
              setState(() {
                _visible = !_visible;
              });
            }, child: null,),
          ],
        ),
      ),
    );
  }
}
