import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(

      color: Colors.black87,
      child: new Row (
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
              Icons.star,
              size: 40.0,
              color: Colors.white
          ),

          new Text('Statistics', style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36.0),)
        ],
      )



  );
}