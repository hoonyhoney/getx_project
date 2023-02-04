import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFormValidation extends StatefulWidget {

  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value){
                if(value!.isEmpty){
                  return '공백은 허용되지 않습니다';
                }
              },
            ),
            RaisedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  Get.snackbar('처리중', '처리중입니다.'
                    ,
                  snackPosition: SnackPosition.BOTTOM);

                }
            },
            child: Text(' 완료'),
            ),
          ],
        ),
      ),
    );
  }
}
