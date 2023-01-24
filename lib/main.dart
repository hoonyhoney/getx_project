import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'GetxNavigation/ScreenTwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 100),
          RaisedButton(onPressed: () {
            Get.to(ScreenTwo());
          },
            child: Text("ScreeTwo로이동"),
          ),
          RaisedButton(onPressed: () {
            Get.offAll(ScreenTwo());
          },child:Text("기록삭제하고 이동")),
          RaisedButton(onPressed: () {

          }),
          RaisedButton(onPressed: () {

          }),
          RaisedButton(onPressed: () {

          }),
          RaisedButton(onPressed: () {

          }),
          RaisedButton(onPressed: () {

          }),
          RaisedButton(onPressed: () {

          }),

          RaisedButton(
            onPressed: () {
              Get.snackbar("새해인사", "새해복 많이 받으세요",
                  snackPosition: SnackPosition.BOTTOM);
            },
            child: Text("snackbar"),
          ),
          RaisedButton(
            onPressed: () {
              Get.defaultDialog(middleText: "팝업");
            },
            child: Text("dialog"),
          ),
          RaisedButton(onPressed: () {

          }),
        ],
      ),
    ));
  }
}


