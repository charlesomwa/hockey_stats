import 'package:flutter/material.dart';
import 'package:hockey_stats/util/SimpleButton.dart';
import 'package:hockey_stats/util/TileButton.dart';
import 'package:hockey_stats/util/StatText.dart';

class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) => new Container(

      color: Colors.white,
      child: new Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /*new Icon(
              Icons.dashboard,
              size: 150.0,
              color: Colors.black12
          ),
          new Text('Dashboard', style: Theme.of(context).textTheme.body1,)
          */

          /*TileButton(
            backgroundColor: Colors.white,
            buttonText: Text("Hello, Randy!", style: Theme.of(context).textTheme.headline.apply(color: Theme.of(context).accentColor),),
            topMargin: 15.0,
            borderRadius: 9.0,
            topPadding: 80.0,
            bottomPadding: 100.0,
            leftPadding: 10.0,
            rightPadding: 10.0,

          ),*/

          new Container(
            margin: EdgeInsets.only(right: 220, top: 100),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("Hello, ", style: Theme.of(context).textTheme.title,),
                new Text("Randy", style: Theme.of(context).textTheme.headline.apply(color: Theme.of(context).accentColor))
              ],
            ),


          ),

          new Container(
            margin: EdgeInsets.only(right:200, top: 10),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("Monday, December 10th", style: Theme.of(context).textTheme.body1),

              ],
            )
          ),

          new Container(
            margin: EdgeInsets.only(top: 50),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                StatText(
                  statistic: "2",
                  statisticDescription: "Seasons",
                ),

                StatText(
                  statistic: "13",
                  statisticDescription: "Games Played",
                ),

                StatText(
                  statistic: "14",
                  statisticDescription: "Total Points",
                )
              ],
            )
          ),

          new Container(
            margin: EdgeInsets.only(top: 45),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Icon(Icons.person, color: Theme.of(context).primaryColor, size: 20,),
                      new Text("Player", style: Theme.of(context).textTheme.button,),

                      new Container(
                        padding: EdgeInsets.only(left: 50),
                        child: new Row(
                          children: <Widget>[
                            new Icon(Icons.calendar_today, color: Theme.of(context).primaryColor, size: 20),
                            new Text("Seasons", style: Theme.of(context).textTheme.button)
                          ],
                        ),
                      )

                    ],
                  )
                )
              ],
            )
          ),

          new Container(
              margin: EdgeInsets.only(top: 20),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Icon(Icons.edit, color: Theme.of(context).primaryColor, size: 20,),
                          new Text("Games", style: Theme.of(context).textTheme.button,),

                          new Container(
                            padding: EdgeInsets.only(left: 50),
                            child: new Row(
                              children: <Widget>[
                                new Icon(Icons.star, color: Theme.of(context).primaryColor, size: 20),
                                new Text("Statistics", style: Theme.of(context).textTheme.button)
                              ],
                            ),
                          )

                        ],
                      )
                  )
                ],
              )
          ),

          new Container(
            margin: EdgeInsets.only(top: 68)
          ),

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