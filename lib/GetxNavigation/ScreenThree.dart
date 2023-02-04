import 'dart:math';

import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  double _width=50;
  double _height=50;
  Color _color = Colors.green;
  BorderRadius _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height:300),
         Center(
            child: AnimatedContainer(
              width: _width,
              height: _height,

              duration: Duration(seconds:2),
              curve: Curves.easeInCirc,
              decoration: BoxDecoration(
                borderRadius: _borderRadius,
                color:_color,
              ),
            ),
          ),
          RaisedButton(onPressed: (){
            setState(() {
            final random = Random();
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();
              _color = Color.fromRGBO(random.nextInt(256),random.nextInt(256),random.nextInt(256),1);
              _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
            });
          }),
        ],
      ),
    );
  }
}
