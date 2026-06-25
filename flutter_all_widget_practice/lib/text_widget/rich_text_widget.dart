// flutter rich text widget 
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rich Text Widget'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Text("MD Tuhin Hossain",
        style: TextStyle(
          fontSize: 50,
        ),
        ),
      ),
    );
  }
}