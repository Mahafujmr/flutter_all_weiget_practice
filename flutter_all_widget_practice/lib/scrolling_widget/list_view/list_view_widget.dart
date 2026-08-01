import 'package:flutter/material.dart';
class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('List View Widget'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0.1,
      ),
      body:  ListView(
        children: [
          Card(
            color: Colors.green,
            child: ListTile(
              title: Text('Md Tuhin'),
              subtitle: Text('Flutter '),
            ),
          ),
          Card(
            color: Colors.green,
            child: ListTile(
              title: Text('Md Tuhin'),
              subtitle: Text('Flutter '),
            ),
          ),
          Card(
            color: Colors.green,
            child: ListTile(
              title: Text('Md Tuhin'),
              subtitle: Text('Flutter '),
            ),
          ),
          Card(
            color: Colors.green,
            child: ListTile(
              title: Text('Md Tuhin'),
              subtitle: Text('Flutter '),
            ),
          ),
          Card(
            color: Colors.green,
            child: ListTile(
              title: Text('Md Tuhin'),
              subtitle: Text('Flutter '),
            ),
          ),
          Card(
            color: Colors.green,
            child: ListTile(
              title: Text('Md Tuhin'),
              subtitle: Text('Flutter '),
            ),
          ),
          Card(
            color: Colors.green,
            child: ListTile(
              title: Text('Md Tuhin'),
              subtitle: Text('Flutter '),
            ),
          ),
          Card(
            color: Colors.green,
            child: ListTile(
              title: Text('Md Tuhin'),
              subtitle: Text('Flutter '),
            ),
          ),
          Card(
            color: Colors.green,
            child: ListTile(
              title: Text('Md Tuhin'),
              subtitle: Text('Flutter '),
            ),
          ),
          Card(
            color: Colors.green,
            child: ListTile(
              title: Text('Md Tuhin'),
              subtitle: Text('Flutter '),
            ),
          ),
          Card(
            color: Colors.green,
            child: ListTile(
              title: Text('Md Tuhin'),
              subtitle: Text('Flutter '),
            ),
          ),
        ],
      ),
    );
  }
}