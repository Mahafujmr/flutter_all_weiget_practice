import 'package:flutter/material.dart';
import 'package:flutter_all_widget_practice/scrolling_widget/list_view/model_class/user_class.dart';


class ListVewSeparate extends StatelessWidget {
  const ListVewSeparate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('List View Separate Widget'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0.1,
      ),
      body: ListView.separated(
        itemCount: user.length,
        padding: EdgeInsets.all(20),
        separatorBuilder: (BuildContext context, int index){
          return Divider(height: 2,);
        }, 
        itemBuilder: (BuildContext contex , int index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(user[index].image),
            ),
            title: Text(user[index].name),
            subtitle: Text(user[index].profesion),
          );
        }, 
        ),
    );
  }
}