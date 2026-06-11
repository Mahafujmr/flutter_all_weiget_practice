import 'package:flutter/material.dart';

class ScreenWidthSet extends StatefulWidget {
  const ScreenWidthSet({super.key});

  @override
  State<ScreenWidthSet> createState() => _ScreenWidthSetState();
}

class _ScreenWidthSetState extends State<ScreenWidthSet> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Text(currentWidth.toString()), 
      ),
    );
  }
}