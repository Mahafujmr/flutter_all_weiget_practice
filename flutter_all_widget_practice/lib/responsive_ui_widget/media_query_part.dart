import 'package:flutter/material.dart';

class MediaQueryPart extends StatelessWidget {
  const MediaQueryPart({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query Widget'),
        centerTitle: true,
        backgroundColor:Colors.red ,
      ),
      body: Container(
        height: screenHeight * 0.7,
        width: screenWidth,
        color: Colors.blue[200],
        child: Center(child: Text('Media Query',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        ),
      ),
    );
  }
}