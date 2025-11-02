// dart row widget
import 'package:flutter/material.dart';

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
      body: Center(
        // horizontal every widget and properties
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          //spacing: 20, // every widget horizontal space
          // textDirection: TextDirection.ltr,=> text direction
          children: [
            Text('Tuhin'),
            Text('Tuhin '),
            Text('Tuhin '),
            Text('Tuhin'),
            Text('Tuhin'),
          ],
        ),
      ),
    );
  }
}
