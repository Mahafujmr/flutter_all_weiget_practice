// flutter padding margin widget practice
import 'package:flutter/material.dart';

class PaddingMarginWidget extends StatelessWidget {
  const PaddingMarginWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Padding & Margin Widget',
          style: TextStyle(fontSize: 22, color: Colors.blue),
        ),
        centerTitle: true,
      ),
    );
  }
}
