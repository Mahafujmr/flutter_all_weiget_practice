import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwith = MediaQuery.of(context).size.width;
     //double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query'),
      ),
      body: Row(
        children: [
          Container(
            height: 200,
            width: screenwith * 0.25,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: screenwith * 0.25,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            width: screenwith * 0.25,
            color: Colors.yellow,
          ),
           Container(
            height: 200,
            width: screenwith * 0.25,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}