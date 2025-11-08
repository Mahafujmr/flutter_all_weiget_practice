// flutter stack widget
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Stack Widget',
          style: TextStyle(fontSize: 22, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: 500,
        color: Colors.green,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.amber[800],
              ),
            ),

            Container(width: 210, height: 210, color: Colors.lightGreenAccent),

            Container(width: 150, height: 150, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
