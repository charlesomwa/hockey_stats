import 'package:flutter/material.dart';
import 'package:hockey_stats/util/SimpleButton.dart';
import 'package:hockey_stats/util/TileButton.dart';

class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) => new Container(

      color: Colors.grey[200],
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /*new Icon(
              Icons.dashboard,
              size: 150.0,
              color: Colors.black12
          ),
          new Text('Dashboard', style: Theme.of(context).textTheme.body1,)
          */

          TileButton(
            backgroundColor: Colors.white,
            buttonText: Text("Hello, Randy!", style: Theme.of(context).textTheme.headline.apply(color: Theme.of(context).accentColor),),
            topMargin: 15.0,
            borderRadius: 9.0,
            topPadding: 80.0,
            bottomPadding: 100.0,
            leftPadding: 10.0,
            rightPadding: 10.0,

          ),




          /*TileButton(
            backgroundColor: Theme.of(context).accentColor,
            buttonText: Text("Stats", style: Theme.of(context).textTheme.title,),
            topMargin: 15.0,
            borderRadius: 9.0,
            topPadding: 80.0,
            bottomPadding: 80.0,
            leftPadding: 100.0,
            rightPadding: 100.0,

          ),*/

          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            //mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SimpleButton(
                backgroundColor: Theme.of(context).primaryColor,
                buttonText: Text("SETTINGS", style: Theme.of(context).textTheme.button.apply(color: Colors.white)),

              )
            ],
          ),






        ],
      )
  );
}