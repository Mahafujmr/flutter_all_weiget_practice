import 'package:flutter/material.dart';
import 'package:flutter_all_widget_practice/image_widget/image_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // change ui screen => dark color
      //darkTheme: ThemeData.dark(),
      // britghtness => light or dark
      //theme: ThemeData(brightness: Brightness.light),
      theme: ThemeData(hintColor: Colors.red),
      // easy navigation for screen
      // routes: ,

      // app launch and first screen show
      //initialRoute: ,
      color: Colors.red,

      // builder is call back function
      //builder: (context, child) => ,
      home: ImageWidget(),
    );
  }
}
