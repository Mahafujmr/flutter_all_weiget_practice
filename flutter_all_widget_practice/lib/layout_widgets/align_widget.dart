// flutter align widget
import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Align Widget',
          style: TextStyle(fontSize: 22, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Align widget Example-Alignment.center'),
          Container(
            width: 200,
            height: 100,
            color: Colors.red,
            child: Align(
              alignment: Alignment.center,
              child: Text('Align widget'),
            ),
          ),
          Text('Align widget Example - Alignment(0.0,0.1)'),
          Container(
            width: 260,
            height: 200,
            color: Colors.blue.withValues(green: 10),
            child: Align(
              alignment: Alignment(1, 0),
              widthFactor: 2,
              child: Container(width: 60, height: 70, color: Colors.blue),
            ),
          ),
        ],
      ),
      // align widget => use width and Height -> Factor
      // body: Center(
      //   child: Container(
      //     color: Colors.blueAccent.shade100,
      //     child: Align(
      //       alignment: Alignment.bottomRight,
      //       heightFactor: 2,
      //       widthFactor: 2,
      //       child: Container(width: 80, height: 80, color: Colors.red),
      //     ),
      //   ),
      // ),
    );
  }
}
