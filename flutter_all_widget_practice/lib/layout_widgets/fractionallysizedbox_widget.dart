// flutter fractionally size box widget
import 'package:flutter/material.dart';

class FractionallysizedboxWidget extends StatelessWidget {
  const FractionallysizedboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fractionally Size Box Widget'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          heightFactor: 0.9,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}