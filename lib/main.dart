import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App ',
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Flutter App',
          style: TextStyle(
            fontSize: 33,
            color: Colors.red,
            fontWeight: FontWeight.w600,
            //backgroundColor: Colors.black,
            debugLabel: '2',
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
