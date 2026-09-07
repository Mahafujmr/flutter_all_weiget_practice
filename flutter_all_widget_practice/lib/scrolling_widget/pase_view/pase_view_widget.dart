import 'package:flutter/material.dart';

class PaseViewWidget extends StatefulWidget {
  const PaseViewWidget({super.key});

  @override
  State<PaseViewWidget> createState() => _PaseViewWidgetState();
}

class _PaseViewWidgetState extends State<PaseViewWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text('Page view Widget') ,
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: PageView(
        
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}