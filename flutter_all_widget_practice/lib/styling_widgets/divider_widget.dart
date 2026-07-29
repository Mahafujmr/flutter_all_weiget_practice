import 'package:flutter/material.dart';
class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            title: Text('Divider Widget'),
            centerTitle: true,
            backgroundColor: Colors.amber,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 130,
                color: Colors.red,
              ),
              const Divider(
                color: Colors.black,
                thickness: 5,
                height: 25,
                indent: 10,
                endIndent: 20,
              ),
              Container(
                width: double.infinity,
                height: 130,
                color: Colors.green,
              ),
              Text('MD Tuhin Hossain',style: TextStyle(fontSize: 30),),
              const Divider(
                color: Colors.orange,
                thickness: 4,
                height: 20,
                indent: 10,
                endIndent: 20,
              ),
              Text('Line is Divider',style: TextStyle(fontSize: 30),),
            ],
          )),
        ),
    );
  }
}