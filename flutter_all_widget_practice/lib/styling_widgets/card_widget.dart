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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
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
                    shadowColor: Colors.yellow,
                    
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.blue,
                    ),
                  ) ,
                  SizedBox(height: 15,)  ,
                  Card(
                    borderOnForeground: false,
                    clipBehavior: Clip.antiAlias,
                    elevation: 20,
                    shadowColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100.0),),
                      side: BorderSide(
                        color: Colors.red,width: 20,
                       // strokeAlign:0.7,
                        style: BorderStyle.solid,
                      )
                    ),
                    child: Image.asset("images/quran.jpeg",width: 300,),
                  ),
                  Card(
                    color: Colors.orange,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),

                      ),
                    ),
                    child: Text("Dart Programme",style: TextStyle(
                      fontSize: 30,
                    ),),
                  )
            ],
          ),
        ),
    );
  }
}