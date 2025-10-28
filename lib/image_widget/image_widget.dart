// flutter image widget
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget', style: TextStyle()),
        backgroundColor: Colors.grey,

        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('This is netwrok Image', style: TextStyle(fontSize: 33)),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5Zo3WyfVe9W8Pc74KkKUbJtHPmkXTavDrTCdUHuUJU0kq_S5PuKfXayQ&s',
            ),
          ],
        ),
      ),
    );
  }
}
