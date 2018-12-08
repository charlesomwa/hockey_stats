import 'package:flutter/material.dart';

class Stats extends StatelessWidget {

  @override
  Widget build(BuildContext context) => new Container(

      color: Colors.black87,
      child: new Column (
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            //padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: new Text("SEASON:\nFall 2018", style: Theme.of(context).textTheme.title.apply(color: Colors.white),),
          ),


          //new Text('Statistics', style: _style)

        ],
    )
  );
}