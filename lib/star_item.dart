import 'package:flutter/material.dart';

class StarItem extends StatelessWidget {

  Function _onPressed;
  bool _isChecked=false;



  int _counter=0;
  StarItem(this._counter,this._onPressed,this._isChecked);
  Widget Star(int i){


    return IconButton(
      icon: this._isChecked ? Icon(Icons.star) : Icon(Icons.star_border),
      color: Colors.red,
      onPressed:()=>this._onPressed(i),
    );
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
