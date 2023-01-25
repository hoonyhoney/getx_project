import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'GetxNavigation/ScreenTwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int returnVal = 10;
  String? message="";

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 100),
          RaisedButton(
            onPressed: () {
              Get.to(ScreenTwo());
            },
            child: Text("ScreeTwo로이동"),
          ),
          RaisedButton(
              onPressed: () {
                Get.offAll(ScreenTwo());
              },
              child: Text("기록삭제하고 이동")),
          RaisedButton(
            onPressed: () async {
              final resp = await Get.to(ScreenTwo());
              setState(() {
                returnVal = resp;
              });
            },
            child: Text("리턴값 받아오기"),
          ),
          Text('리턴값: $returnVal'),
          RaisedButton(
              onPressed: () {
                Get.to(ScreenTwo(), arguments: message);
              },
              child: Text("argument보내기")),
          RaisedButton(onPressed: () {
            Get.to(ScreenTwo(),
            transition: Transition.fadeIn);
          },child:Text("transition")),
          RaisedButton(onPressed: () {
            Get.toNamed('/two/1234?id=id');
          },child: Text("네임드라우트"),),
          RaisedButton(onPressed: () {}),
          RaisedButton(onPressed: () {}),
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
          RaisedButton(onPressed: () {}),
        ],
      ),
    ),
      getPages: [
        GetPage(
          name: '/two/:param',
          page:()=> ScreenTwo(),
        ),
      ],
    );
  }
}
