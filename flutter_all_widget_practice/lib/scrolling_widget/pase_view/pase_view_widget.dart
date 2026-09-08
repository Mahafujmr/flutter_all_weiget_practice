import 'package:flutter/material.dart';
import 'package:flutter_all_widget_practice/scrolling_widget/grid_view/grid_view_builder.dart';
import 'package:flutter_all_widget_practice/scrolling_widget/list_view/listView_builder_widget.dart';

class PaseViewWidget extends StatefulWidget {
  const PaseViewWidget({super.key});

  @override
  State<PaseViewWidget> createState() => _PaseViewWidgetState();
}
final PageController _controller = PageController(
    initialPage: 0
  );

class _PaseViewWidgetState extends State<PaseViewWidget> {

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text('Page view Widget') ,
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Expanded(
            child:PageView(
              controller: _controller,
        children: [
          GridViewBuilder(),
          ListviewBuilderWidget(),
          Container(
            color: Colors.orange,
          ),
        ],
      ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
        ),
        onPressed: () {
        _controller.nextPage(
          duration:Duration(milliseconds: 200) , 
          curve: Curves.easeInOut,
          );
      }, child:Text("Next Screen",
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
      ) 
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
        ),
        onPressed: () {
        _controller.previousPage(
          duration:Duration(milliseconds: 200) , 
          curve: Curves.easeInOut,
          );
      }, child:Text("Previous Screen",
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
      ) 
      ),
      Flexible(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
          _controller.jumpToPage(2);
        }, child:Text("Other  Screen",
        style: TextStyle(color: Colors.black,fontSize: 13),
        ) 
        ),
      ),
      Flexible(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
          _controller.animateToPage(3,
           duration: Duration(milliseconds: 200), 
           curve: Curves.easeInQuart,
           );
        }, child:Text("Animated",
        style: TextStyle(color: Colors.black,fontSize: 13),
        ) 
        ),
      ),
        ],
      )
        ],

      )
    );
  }
}