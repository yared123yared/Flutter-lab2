import 'package:flutter/material.dart';

import 'star_item.dart';

class Star extends StatefulWidget {

  @override
  _StarState createState() => _StarState();
}

class _StarState extends State<Star> {
  bool isChecked=false;
  int counter=0;

  void onPressed(int rating){
    print("button clicked");
    setState(() {
      counter=rating;
    });
  }

  void testCall(bool isChecked){
      print("this method clicked");
      setState(() {
        isChecked=!isChecked;
      });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Give Star"),
      ),

      body: Container(
        margin: EdgeInsets.all(50),
        child: Center(
          child: StarItem(this.counter, this.onPressed,this.isChecked),
        ),
      ),
    );
  }
}
