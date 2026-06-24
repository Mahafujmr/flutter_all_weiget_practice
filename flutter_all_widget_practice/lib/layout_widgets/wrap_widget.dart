import 'package:flutter/material.dart';

class WrapWidgetTest extends StatelessWidget {
  const WrapWidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body:Container(
        width: double.infinity,
        child: Wrap(
          spacing: 3,
          runSpacing:5,
          alignment: WrapAlignment.center,
          //direction: Axis.vertical,
          children: [
            Container(
              width: 70,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.black,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.orange,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.black,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.yellow,
            ),
          ],
        ),
      ) ,
    );
  }
}