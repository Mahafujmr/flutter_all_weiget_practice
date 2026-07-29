import 'package:flutter/material.dart';
class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Card'),
            centerTitle: true,
            backgroundColor: Colors.amber,
        ),
    );
  }
}