import 'package:flutter/material.dart';
class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile Widget'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: SafeArea(
        child:Column(
          children: [
            ListTile(
          title: Text('MD Tuhin',style: TextStyle(fontSize: 25),),
          subtitle: Text('Flutter Developer'),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/quran.jpeg"),
            backgroundColor: Colors.red,
          
          ),
        ),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(
              30
            ),
            side: BorderSide(
              color: Colors.red,
              width: 2,                      
            ),
          ),
          elevation: 5,
          child: ListTile(
          title: Text('MD Tuhin',style: TextStyle(fontSize: 25),),
          subtitle: Text('Flutter Developer'),
          trailing: Icon(Icons.more_horiz),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/quran.jpeg"),
            backgroundColor: Colors.white,
          
          ),
        ),
        ),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(
              30
            ),
            side: BorderSide(
              color: Colors.red,
              width: 2,                      
            ),
          ),
          elevation: 5,
          child: ListTile(
          title: Text('MD Tuhin',style: TextStyle(fontSize: 25),),
          subtitle: Text('Flutter Developer'),
          trailing: Icon(Icons.more_horiz),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/quran.jpeg"),
            backgroundColor: Colors.white,
          
          ),
        ),
        ),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(
              30
            ),
            side: BorderSide(
              color: Colors.red,
              width: 2,                      
            ),
          ),
          elevation: 5,
          child: ListTile(
          title: Text('MD Tuhin',style: TextStyle(fontSize: 25),),
          subtitle: Text('Flutter Developer'),
          trailing: Icon(Icons.more_horiz),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/quran.jpeg"),
            backgroundColor: Colors.white,
          
          ),
        ),
        ),
          ],
        )
         ),
    );
  }
}