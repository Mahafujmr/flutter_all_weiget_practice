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
        color: Colors.purple,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 50,

              child: Container(width: 300, height: 250, color: Colors.green),
            ),
            Container(width: 270, height: 200, color: Colors.yellow),
            Container(width: 200, height: 150, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
