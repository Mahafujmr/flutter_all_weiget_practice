// flutter select able text widget 
import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  const SelectableTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Select Able Text Widget'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30,right: 30),
        child: SelectableText(
            '''Ancient and Colonial Era: For centuries, the region of Bengal was
                 governed by successive Buddhist, Hindu, and Muslim empires.
              It became the first territory on the subcontinent 
              colonized by the British East India Company in 1757.T
              he Partition Paths: When British India was partitioned 
              in 1947, the region became East Bengal (later East Pakistan),
              an eastern provincial exclave of Pakistan geographically 
              separated from West Pakistan by over 1,500 kilometers of Indian territory.''',
              style: TextStyle(color: Colors.red,fontSize: 30),
              cursorColor: Colors.black,
              cursorHeight: 40,
              cursorWidth: 5,
              showCursor: true,
              cursorRadius: Radius.circular(10),
             
              


          ),
      )
    );
  }
}