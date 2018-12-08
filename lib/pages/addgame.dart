import 'package:flutter/material.dart';

class AddGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(

      color: Colors.white,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Icon(
              Icons.add,
              size: 150.0,
              color: Colors.black12
          ),
          new Text('Add New Game')
        ],
      )
  );
}