import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('AppBar'),
        centerTitle: true,
        leading: Icon(Icons.home_work),
        actions: <Widget>[
          Icon(Icons.notification_add),
          Icon(Icons.phone),
          Text('Icon'),
        ],
      ),
      body: Center(child: Text('AppBar widget')),
    );
  }
}
