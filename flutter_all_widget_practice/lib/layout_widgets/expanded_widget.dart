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
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
          ),
           Expanded(
            flex: 1,
             child: Container(
            width: double.infinity,
              height: 200,
              color: Colors.orange,
                       ),
           ),
        ],
      ),
    );
  }
}