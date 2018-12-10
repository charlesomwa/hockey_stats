import 'package:flutter/material.dart';

class StatText extends StatelessWidget {

  final String statistic;
  final String statisticDescription;

  StatText({
    this.statistic,
    this.statisticDescription
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(statistic, style: Theme.of(context).textTheme.title,),
          new Text(statisticDescription, style: Theme.of(context).textTheme.body1)
        ],
      )
    );
  }
}