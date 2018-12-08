import 'package:flutter/material.dart';

class AddGame extends StatelessWidget {

  @override
  Widget build(BuildContext context) => new Container(

      color: Colors.white,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Icon(
              Icons.add,
              size: 50.0,
              color: Colors.black12
          ),
          new Text('Add New Game', style: Theme.of(context).textTheme.body1)
        ],
      )
  );
}