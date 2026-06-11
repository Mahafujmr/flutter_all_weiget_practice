// flutter column widget
import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Column Widget',
          style: TextStyle(fontSize: 22, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: 300,
        child: Column(
          /*
          mainAxisAlignment = >Vertical(Top to Buttom)
          crossAxisAlignment => Horizontal(Right to left)
          */
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tuhin', style: TextStyle(fontSize: 33)),
            Text('Tuhin', style: TextStyle(fontSize: 33)),
            Text('Tuhin', style: TextStyle(fontSize: 33)),
            Text('Tuhin', style: TextStyle(fontSize: 33)),
            Text('Tuhin', style: TextStyle(fontSize: 33)),
            Text('Tuhin', style: TextStyle(fontSize: 33)),
          ],
        ),
      ),
    );
  }
}
