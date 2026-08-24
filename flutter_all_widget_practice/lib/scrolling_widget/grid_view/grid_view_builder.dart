import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
   GridViewBuilder({super.key});
 final List<String> imageList =[
  "images/laptop.jpeg",
  "images/quran.jpeg",
  "images/laptop.jpeg",
  "images/quran.jpeg",
  "images/laptop.jpeg",
  "images/quran.jpeg",
  "images/laptop.jpeg",
  "images/quran.jpeg",
  "images/laptop.jpeg",
  "images/quran.jpeg",
  "images/laptop.jpeg",
  "images/quran.jpeg",
  "images/laptop.jpeg",
  "images/quran.jpeg",
  "images/laptop.jpeg",
  "images/quran.jpeg",
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Builder Widget'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0.1,
      ),
      body: GridView.builder(
        itemCount:imageList.length,
         itemBuilder:(BuildContext context ,int index ){
          return Image.asset(imageList [index],fit: BoxFit.cover,);
         },
         gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.20,
          mainAxisExtent: 200,
          
         ) , 
         padding: EdgeInsets.all(30),
         scrollDirection: Axis.vertical,
         physics: BouncingScrollPhysics(),
        ),
    );
  }
}