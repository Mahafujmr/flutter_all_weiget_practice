import 'package:flutter/material.dart';

class MediaQueryResponsiveUi extends StatelessWidget {
  const MediaQueryResponsiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query Widget'),
        centerTitle: true,
        backgroundColor:Colors.red ,
      ),
      body: Center(
        child: Text('Scrren Width - $screenHeight'),
      ),
    );
  }
}