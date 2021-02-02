import 'package:flutter/material.dart';

class StarStateFul extends StatefulWidget {
  @override
  _StarStateFulState createState() => _StarStateFulState();
}

class _StarStateFulState extends State<StarStateFul> {

//  bool isChecked=false;
  int _counter=0;

  void _onPressed(int rating){
    print("button clicked");
    setState(() {
      _counter=rating;
    });
  }


  @override
  Widget build(BuildContext context) {
     return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [

            IconButton(
              icon: this._counter >0  ? Icon(Icons.star) : Icon(Icons.star_border),
              color: Colors.red,
              onPressed:()=>this._onPressed(1),
            ),
            IconButton(
              icon:  this._counter >1 ? Icon(Icons.star) : Icon(Icons.star_border),
              color: Colors.red,
              onPressed:()=>this._onPressed(2),
            ),
            IconButton(
              icon:  this._counter >2 ? Icon(Icons.star) : Icon(Icons.star_border),
              color: Colors.red,
              onPressed:()=>this._onPressed(3),
            ),
            IconButton(
              icon:  this._counter >3  ? Icon(Icons.star) : Icon(Icons.star_border),
              color: Colors.red,
              onPressed:()=>this._onPressed(4),
            ),
            IconButton(
              icon: this._counter >4 ? Icon(Icons.star) : Icon(Icons.star_border),
              color: Colors.red,
              onPressed:()=>this._onPressed(5),
            ),


          ],
        ),
        Text("${this._counter}", style: TextStyle(color: Colors.purple,fontSize: 30),)

      ],
    );

  }
}
