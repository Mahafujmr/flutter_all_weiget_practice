// flutter sizedbox widget
import 'package:flutter/material.dart';

class SizedboxWidget extends StatelessWidget {
  const SizedboxWidget({super.key});
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'SizeBox Widget',
          style: TextStyle(fontSize: 22, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.red,
            ),
            onPressed: () {},
            child: Text('Check'),
          ),
        ),
      ),
    );
  }
}
