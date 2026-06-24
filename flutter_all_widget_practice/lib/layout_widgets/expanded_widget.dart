// flutter expanded widget 
import 'package:flutter/material.dart';

class ExpandedWidgetTest extends StatelessWidget {
  const ExpandedWidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Row(
        children: [
          Container(
            width: 100,
            height: 200,
            color: Colors.black,
          ),
          Container(
            width: 100,
            height: 200,
            color: Colors.red,
          ),
           Expanded(
             child: Container(
              width: 100,
              height: 200,
              color: Colors.orange,
                       ),
           ),
        ],
      ),
    );
  }
}