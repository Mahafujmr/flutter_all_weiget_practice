import 'package:flutter/material.dart';
class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Card'),
            centerTitle: true,
            backgroundColor: Colors.amber,
        ),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              Card(
                   elevation: 5,
                  surfaceTintColor: Colors.amber,
                  color: Colors.red,
                  shadowColor: Colors.red,
                  child: Image(image: AssetImage("images/laptop.jpeg"),),
                      ),
                      SizedBox(height: 20,),
                       Card(
                   elevation: 10,
                  surfaceTintColor: Colors.amber,
                  color: Colors.red,
                  shadowColor: Colors.green,
                  borderOnForeground: true,
                  clipBehavior: Clip.antiAlias,
                  margin: EdgeInsetsGeometry.all(30),
                  
                  child: Image(image: AssetImage("images/quran.jpeg"),),
                      ),
          
                  Card(
                    elevation: 10,
                    shadowColor: Colors.red,
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.blue,
                    ),
                  )   
            ],
          ),
        ),
    );
  }
}