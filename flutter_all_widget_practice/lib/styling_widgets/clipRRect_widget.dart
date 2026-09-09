import 'package:flutter/material.dart';

class CliprrectWidget extends StatelessWidget {
  const CliprrectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect Widget"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.elliptical(200, 300)),
          child: Container(
            color: Colors.brown,
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}