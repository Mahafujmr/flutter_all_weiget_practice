import 'package:flutter/material.dart';

class PaseViewWidget extends StatefulWidget {
  const PaseViewWidget({super.key});

  @override
  State<PaseViewWidget> createState() => _PaseViewWidgetState();
}

final _controller = PageController(
  initialPage: 0,
);
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
        controller: _controller,
        children: [
          Container(
            color: Colors.deepOrange,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}