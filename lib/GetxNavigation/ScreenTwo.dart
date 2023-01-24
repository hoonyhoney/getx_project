import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(child: Column(
        children: [
          Text("스크린 TWO"),
          RaisedButton(onPressed: (){
            Get.back();
          },
          child:Text("뒤로가기"),),
        ],
      )),
    );
  }
}
