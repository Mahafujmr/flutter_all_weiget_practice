// dart row widget
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Row Widget',
          style: TextStyle(color: Colors.black, fontSize: 33),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: 300,
        color: Colors.red,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //use container because crossAxis alignment behaviour show
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,

          //spacing: 20, // every widget horizontal space
          // textDirection: TextDirection.ltr,=> text direction
          children: [Text('A'), Text('B '), Text('C '), Text('D'), Text('E')],
        ),
      ),
    );
  }
}
