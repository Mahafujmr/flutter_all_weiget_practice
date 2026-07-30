import 'package:flutter/material.dart';
class OpacityWidget extends StatelessWidget {
  const OpacityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text('Opacity Widget'),
            centerTitle: true,
            backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            fit: StackFit.loose,
          
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.red,
              ),
              Positioned(
                bottom: -50,
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 100,
                    height: 100,
                   decoration: BoxDecoration(
                     color: Colors.orange,
                     borderRadius: BorderRadius.circular(30),
                   ),
                    
                  ),
                ),
              ),
              Positioned(
                top: -50,
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 100,
                    height: 100,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(30),
                   ),
                    
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}