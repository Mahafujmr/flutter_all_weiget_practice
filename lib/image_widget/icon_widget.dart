// flutter icon widget
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Widget'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Center(child: Icon(Icons.ad_units, size: 200, color: Colors.red)),
    );
  }
}
