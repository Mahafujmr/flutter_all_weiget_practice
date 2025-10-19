import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: TextWidget(),
    ),
  );
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Flutter App This is my first app and i am a app developer and my futer plan is software enginnar',
          // show text line
          maxLines: 3,
          //text position set
          textAlign: TextAlign.justify,
          overflow: TextOverflow.visible,
          softWrap: true,
          textDirection: TextDirection.ltr,
          textScaleFactor: 1,
          // control text hight and specing
          strutStyle: StrutStyle(
            fontSize: 30,
            height: 3,
            fontStyle: FontStyle.italic,
            debugLabel: 'Tuhin',
            fontWeight: FontWeight.bold,
          ),
          style: TextStyle(
            fontSize: 23,
            color: Colors.red,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.black,
            letterSpacing: 2.33,
            wordSpacing: 15.33,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
            decorationStyle: TextDecorationStyle.dashed,
            height: 2,
            // fontFamily:
          ),
        ),
      ),
    );
  }
}
