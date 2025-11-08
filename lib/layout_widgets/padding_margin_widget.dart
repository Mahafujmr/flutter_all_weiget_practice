// flutter padding margin widget practice
import 'package:flutter/material.dart';

class PaddingMarginWidget extends StatelessWidget {
  const PaddingMarginWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Padding & Margin Widget',
          style: TextStyle(fontSize: 22, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Padding Example'),
          // paddin always space inside
          Container(
            // width: 100,
            // height: 80,
            color: Colors.blue,
            padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 50),
            child: Text('Padding Example'),
          ),
          SizedBox(height: 20),
          // margin always space outside
          Container(
            color: Colors.red,
            width: 100,
            height: 60,
            margin: EdgeInsets.all(80),
            child: Text('Margin Example'),
          ),
        ],
      ),
    );
  }
}
