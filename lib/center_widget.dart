// flutter center widget
import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // center widget always time show screen middle
      // center widget all time support one child
      body: Center(
        child: Icon(
          Icons.houseboat_rounded,
          color: Colors.red,
          size: 100,
          weight: 200,
        ),
      ),
    );
  }
}
