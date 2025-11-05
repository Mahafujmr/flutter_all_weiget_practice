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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Tuhin', style: TextStyle(fontSize: 33)),
          Text('Tuhin', style: TextStyle(fontSize: 33)),
          Text('Tuhin', style: TextStyle(fontSize: 33)),
          Text('Tuhin', style: TextStyle(fontSize: 33)),
          Text('Tuhin', style: TextStyle(fontSize: 33)),
          Text('Tuhin', style: TextStyle(fontSize: 33)),
        ],
      ),
    );
  }
}
