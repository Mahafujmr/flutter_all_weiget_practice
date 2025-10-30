// dart row widget
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Row Widget',
          style: TextStyle(color: Colors.black, fontSize: 33),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          // horizontal every widget and properties
          child: Row(
            //spacing: 20, // every widget horizontal space
            // textDirection: TextDirection.ltr,=> text direction
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('Tuhin'),
              Text('Tuhin Hossain'),
              Text('Tuhin Mahafuj'),
              Text('Tuhin'),
              Text('Tuhin'),
              Icon(Icons.computer),
              Text('Tuhin Hossin and mr tuhin  '),
              Image.asset('images/laptop.jpeg'),
              Icon(Icons.computer),
            ],
          ),
        ),
      ),
    );
  }
}
