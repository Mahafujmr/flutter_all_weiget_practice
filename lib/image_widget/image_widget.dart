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
            // network image
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5Zo3WyfVe9W8Pc74KkKUbJtHPmkXTavDrTCdUHuUJU0kq_S5PuKfXayQ&s',
            ),
            Text('This is asset Image', style: TextStyle(fontSize: 33)),
            // asset image
            Image.asset(
              'images/quran.jpeg',
              alignment: Alignment.bottomCenter,
              cacheHeight: 200,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(height: 20),
            Text('Asset Image', style: TextStyle(fontSize: 30)),
            Image.asset(
              'images/laptop.jpeg',
              color: Colors.red,
              // image color change
              colorBlendMode: BlendMode.colorBurn,
            ),
            // file image not support flutter web
            // Image.file(
            //   File(
            //     'C:\Users\Trust Computer\OneDrive\Pictures\Screenshots 1'
            //   ),
            // ),
            Text('Asset Image', style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
