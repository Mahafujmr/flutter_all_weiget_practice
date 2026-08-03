import 'package:flutter/material.dart';
class ListviewBuilderWidget extends StatefulWidget {
  const ListviewBuilderWidget({super.key});

  @override
  State<ListviewBuilderWidget> createState() => _ListviewBuilderWidgetState();
}

class _ListviewBuilderWidgetState extends State<ListviewBuilderWidget> {
   List<String> student =  [
    "Tuhin",
    "Toma",
    "Sormila",
    "Mahafuj",
    "Masuma",
    "Ralib",
    "Toma",
    "Sormila",
    "Mahafuj",
    "Masuma",
    "Toma",
    "Sormila",
    "Mahafuj",
    "Masuma",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('List View Widget'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0.1,
      ),
      body: ListView.builder(
        itemCount: student.length,
        padding: EdgeInsets.all(20),
      //  shrinkWrap: false,
      //   clipBehavior: Clip.antiAlias,
      //   reverse: false,
        itemBuilder: (context ,index){
          return Card(
            color: Colors.red,
            child: ListTile(
              leading: CircleAvatar(
                child: Text("${index+1}"),
              ),
              title: Text(student[index],
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Flutter logo"),
              trailing: Icon(Icons.arrow_forward),
            ),
          );
          // return Card(
          //   color: Colors.white,
          //   elevation: 3,
          //   shadowColor: Colors.red,
          //   child: ListTile(
          //     leading: CircleAvatar(
          //       backgroundImage: AssetImage("images/laptop.jpeg"),
          //     ),
          //     title: Text('Md Tuhin Hossain',
          //     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
          //     ),
          //     subtitle: Text("Flutter Developer"),
          //     trailing: Icon(Icons.phone),
          //   ),
          // );

      },),
    );
  }
}