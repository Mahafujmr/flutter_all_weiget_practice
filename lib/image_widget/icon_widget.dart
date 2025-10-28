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
      body: Column(
        children: [
          Icon(Icons.ad_units, size: 200, color: Colors.red),
          Icon(Icons.access_alarms_rounded, size: 200),
          Icon(Icons.account_circle_outlined, size: 200),
        ],
      ),
    );
  }
}
