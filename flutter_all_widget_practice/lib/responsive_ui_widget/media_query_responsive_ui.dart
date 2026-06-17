import 'package:flutter/material.dart';

class MediaQueryResponsiveUi extends StatefulWidget {
  const MediaQueryResponsiveUi({super.key});

  @override
  State<MediaQueryResponsiveUi> createState() => _MediaQueryResponsiveUiState();
}

class _MediaQueryResponsiveUiState extends State<MediaQueryResponsiveUi> {
  bool isDesktop (BuildContext context) =>
     MediaQuery.of(context).size.width => 600;

     bool isMobile (BuildContext context) =>
     MediaQuery.of(context).size.width => 600;

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
      body: Row(
        children: [
          Container(
            color: Colors.brown,
            width: 200,
            child: Center(
              child: Text('UI'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              width: 200,
              child: Center(
                child: Text('CENTER'),
              ),
            ),
          ),
        ],
      )
    );
  }
}