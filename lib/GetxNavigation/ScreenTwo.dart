import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  late int radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 500,
            ),
            Text("스크린 TWO"),
            TextButton(
              onPressed: () {
                Get.back(result: radioVal);
              },
              child: Text("뒤로가기"),
            ),
            Row(children: [
              SizedBox(
                width: 300,
              ),
              Radio(
                groupValue: radioVal,
                value: 0,
                onChanged: (int? value) {
                  setState(() {
                    radioVal = value!;
                  });
                },
              ),
              Text('0'),
            ]),
            Row(
              children: [
                SizedBox(
                  width: 300,
                ),
                Radio(
                  groupValue: radioVal,
                  value: 1,
                  onChanged: (int? value) {
                    setState(() {
                      radioVal = value!;
                    });
                  },
                ),
                Text('1'),
              ],
            ),
            Text(
                Get.parameters['param']!,
            ),            Text(
                Get.parameters['id']!,
            )
          ],
        )),
      ),
    );
  }
}
