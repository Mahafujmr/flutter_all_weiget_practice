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
      //=> Stack Widget example
      // body: Container(
      //   width: double.infinity,
      //   height: 500,
      //   color: Colors.purple,
      //   child: Stack(
      //     alignment: Alignment.center,
      //     children: [
      //       Positioned(
      //         left: 50,
      //         child: Container(width: 300, height: 250, color: Colors.green),
      //       ),
      //       Container(width: 270, height: 200, color: Colors.yellow),
      //       Container(width: 200, height: 150, color: Colors.red),
      //     ],
      //   ),
      // ),

      //=> another use case flutter stack widget
      // body: Center(
      //   child: Stack(
      //     clipBehavior: Clip.none,
      //     // alignment not work , cause use clip.none
      //    //alignment: Alignment.center,
      //     children: [
      //       Container(width: 250, height: 300, color: Colors.green[400]),
      //       Positioned(
      //         top: -100,
      //         right: 30,
      //         child: Container(width: 200, height: 200, color: Colors.red),
      //       ),
      //       Positioned(
      //         bottom: -25,
      //         left: 60,
      //         child: Container(width: 70, height: 50, color: Colors.yellow),
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
        width: double.infinity,
        height: 400,
        color: Colors.grey,
        child: Stack(
          // use expand - last widget show this properties
          //fit: StackFit.expand,
          //=> Control Text widget
          textDirection: TextDirection.rtl,
          children: [
            Container(width: 300, height: 250, color: Colors.red),
            Container(
              width: 230,
              height: 100,
              color: Colors.yellow,
              child: Text('This is Stack WIdget'),
            ),
            // Container(width: 120, height: 70, color: Colors.black),
            Positioned(
              right: 10,
              bottom: 10,
              child: Container(width: 100, height: 50, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
/*
Stack widget important part
positioned widget (top,bottom, left, write)
valu (-) so any widget outside 
*/