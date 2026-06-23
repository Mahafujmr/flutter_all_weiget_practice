import 'package:flutter/material.dart';

class ContainerColoumResponsive extends StatelessWidget {
  const ContainerColoumResponsive({super.key});

  @override
  Widget build(BuildContext context) {
   // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
             // height: screenHeight * 0.25,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
             // height: screenHeight * 0.25,
              color: Colors.lightGreenAccent,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              //height: screenHeight * 0.25,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              //height: screenHeight * 0.25,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
             // height: screenHeight * 0.25,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}