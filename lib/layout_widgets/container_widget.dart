// flutter container widget => important widget
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Container Widget',
          style: TextStyle(fontSize: 22, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.brown,
            // use borderRadius -maintain container box
            // borderRadius: BorderRadius.circular(100),
            // use border- maintain box outside border and color
            border: Border.all(width: 5, color: Colors.black),
            // use boxShadow - maintain container bluer , color, offect
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 20, spreadRadius: 12),
            ],
            // use shape- boxShape - circle and rectangle
            shape: BoxShape.circle,
            // use image - maintain container image
            image: DecorationImage(
              image: AssetImage('images/laptop.jpeg'),
              fit: BoxFit.scaleDown,
              scale: 10,
            ),
          ),
        ),
      ),
    );
  }
}
