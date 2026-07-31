import 'package:flutter/material.dart';
class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Widget'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            child: Text('FLutter'),
          ),
          Container(
            height: 200,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 100,
            color: Colors.black,
          ),
          Container(
            height: 200,
            width: 100,
            color: Colors.green,
          ),
          Container(
            height: 200,
            width: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 200,
            width: 100,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}