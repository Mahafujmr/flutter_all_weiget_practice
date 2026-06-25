import 'package:flutter/material.dart';

class MediaQueryResponsive extends StatelessWidget {
  const MediaQueryResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query Widget'),
        centerTitle: true,
        backgroundColor:Colors.red ,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Height${MediaQuery.of(context).size.height}'),
            Text('Widght${MediaQuery.of(context).size.height}'),
            Text('Aspect Ratio${MediaQuery.of(context).size.height.toStringAsFixed(2)}'),
            Text( MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)),
          ],
        ),
      ),
      
    );
  }
}