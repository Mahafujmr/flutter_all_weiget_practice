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
          borderRadius: BorderRadius.circular(40),
          child: Image.asset('images/laptop.jpeg',width: 400,height: 200,fit: BoxFit.fill,),
        ),
      ),
    );
  }
}