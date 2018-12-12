import 'package:flutter/material.dart';
import 'package:hockey_stats/util/SimpleButton.dart';
//import 'package:../flutter_widgets/flutter_widgets.dart';

class Stats extends StatelessWidget {

  // I need to use a ListView for this class

  @override
  Widget build(BuildContext context) => new Container(

      color: Colors.black87,
      child: new Column (
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
            child: new Text("Fall 2018", style: Theme.of(context).textTheme.title.apply(color: Theme.of(context).accentColor),),
          ),

          new Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
            child:
              new Text(
                "Goals: 3",
                style: Theme.of(context).textTheme.title.apply(color: Colors.white)
              )
          ),

          new Container(
            //alignment: Alignment.bottomLeft,
              padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
              child:
              new Text(
                  "Assists: 10",
                  style: Theme.of(context).textTheme.title.apply(color: Colors.white)
              )
          ),


          new Container(
            //alignment: Alignment.bottomLeft,
              padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
              child:
              new Text(
                  "Games Played: 14",
                  style: Theme.of(context).textTheme.title.apply(color: Colors.white)
              )
          ),


          new Container(
            //alignment: Alignment.bottomLeft,
              padding: EdgeInsets.fromLTRB(25, 15.0, 0, 0),
              child:
              new Text(
                  "Total Points: 13",
                  style: Theme.of(context).textTheme.title.apply(color: Colors.white)
              )
          ),
          //new Text('Statistics', style: _style)


        ],
    )
  );
}