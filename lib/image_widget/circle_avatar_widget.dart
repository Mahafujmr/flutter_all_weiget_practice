// flutter circle avatar widget
import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Circle Avatar Widget',
          style: TextStyle(fontSize: 20, color: Colors.yellow[300]),
        ),
        backgroundColor: Colors.green[600],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              // background color set
              backgroundColor: Colors.red,
              //for ground color set
              foregroundColor: Colors.black,
              radius: 100,
              // set background image
              backgroundImage: AssetImage('images/laptop.jpeg'),
              // add child
              // child: Text(
              //   'T',
              //   style: TextStyle(fontSize: 150, color: Colors.red),
              // ),
            ),
            SizedBox(height: 30),
            // add border and background images
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 85,
              child: CircleAvatar(
                radius: 82,
                backgroundImage: AssetImage('images/laptop.jpeg'),
              ),
            ),
            SizedBox(height: 30),
            // add circler avater border , backgoud color , then image
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 85,
              child: CircleAvatar(
                backgroundColor: Colors.green[700],
                radius: 80,
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('images/laptop.jpeg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
