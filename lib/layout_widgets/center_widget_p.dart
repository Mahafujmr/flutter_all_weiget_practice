// flutter center widget
import 'package:flutter/material.dart';

class CenterWidgetP extends StatelessWidget {
  const CenterWidgetP({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Center Widget',
          style: TextStyle(fontSize: 22, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.yellow,
          child: Icon(Icons.mobile_friendly, size: 100),
        ),
      ),
    );
  }
}
