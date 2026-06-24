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
      body:Wrap(
        spacing: 3,
        runSpacing:5,
        alignment: WrapAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: [
          Container(
            width: 100,
            height: 150,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 150,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 150,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 150,
            color: Colors.black,
          ),
          Container(
            width: 100,
            height: 150,
            color: Colors.orange,
          ),
        ],
      ) ,
    );
  }
}