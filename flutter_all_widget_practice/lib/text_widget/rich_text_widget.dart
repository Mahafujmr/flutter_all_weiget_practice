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
        child: RichText(
          text: TextSpan(
            text: 'Do you Have any Account?',style: TextStyle(fontSize: 20),
            children: <TextSpan> [
              TextSpan(
              text: 'Sign IN',
              style: TextStyle(fontSize: 27,color: Colors.red,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
              ),
              
            ]
          ),
        )
      ),
    );
  }
}