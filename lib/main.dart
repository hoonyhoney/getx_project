import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/GetxNavigation/MyTabController.dart';
import 'package:getx_project/GetxNavigation/Validation.dart';

import 'GetxNavigation/MySwipeToDismiss.dart';
import 'GetxNavigation/QRviewExample.dart';
import 'GetxNavigation/ScreenFive.dart';
import 'GetxNavigation/ScreenFour.dart';
import 'GetxNavigation/ScreenThree.dart';
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
          TextButton(
            onPressed: () {
              Get.to(ScreenTwo());
            },
            child: Text("ScreeTwo로이동"),
          ),
          TextButton(onPressed: (){
            Get.to(ScreenThree());
          },
          child:Text("screenThree이동"),),
          TextButton(onPressed: (){
            Get.to(ScreenFive());
          },
            child:Text("screenFive이동"),),

          TextButton(onPressed: (){
            Get.to(MyFormValidation());
          },
            child:Text("Myform"),),
          TextButton(
            onPressed: () async {
              final resp = await Get.to(MyTabController());
              setState(() {
                returnVal = resp;
              });
            },
            child: Text("TabController이동"),
          ),

          TextButton(
            onPressed: () async {
              final resp = await Get.to(ScreenTwo());
              setState(() {
                returnVal = resp;
              });
            },
            child: Text("리턴값 받아오기"),
          ),
          Text('리턴값: $returnVal'),
          TextButton(
              onPressed: () {
                Get.to(ScreenTwo(), arguments: message);
              },
              child: Text("argument보내기")),
          TextButton(onPressed: () {
            Get.to(ScreenTwo(),
            transition: Transition.fadeIn);
          },child:Text("transition")),
          TextButton(onPressed: () {
            Get.toNamed('/two/1234?id=id');
          },child: Text("네임드라우트"),),
          TextButton(onPressed: () {
            Get.to(MySwipeToDismiss());
          },child:Text('SwipteDismiss')),
          TextButton(
            onPressed: () {
              Get.snackbar("새해인사", "새해복 많이 받으세요",
                  snackPosition: SnackPosition.BOTTOM);
            },
            child: Text("snackbar"),
          ),
          TextButton(
            onPressed: () {
              Get.defaultDialog(middleText: "팝업");
            },
            child: Text("dialog"),
          ),
          TextButton(
            onPressed: (){
              Get.to(QRViewExample());
            },
            child: Text('QR찍기'),
          )
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


