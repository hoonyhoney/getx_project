import 'package:flutter/material.dart';

class MySwipeToDismiss extends StatefulWidget {

  @override
  _MySwipeToDismissState createState() => _MySwipeToDismissState();
}

class _MySwipeToDismissState extends State<MySwipeToDismiss> {
  
  final items = List<String>.generate(20, (i) => "Item ${i+1}");
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwipeToDismiss'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              background: Container(color: Colors.red),
              direction: DismissDirection.startToEnd,
              onDismissed: (direction){ //실제로 데이터 삭제를 위한 작업
                setState(() {
                  items.removeAt(index);
                });
              },
              key: Key(item),
              child: ListTile(
                title: Text('${items[index]}'),),
            );
          }
      )
    );
  }
}

