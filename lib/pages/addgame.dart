import 'package:flutter/material.dart';
import 'package:hockey_stats/util/SimpleButton.dart';

class AddGame extends StatefulWidget {

  @override
  _AddGame createState() => _AddGame();

}

class _AddGame extends State<AddGame> {

  bool showExtended = false;
  bool getShowExtended() =>  showExtended;
  void setShowExtended(bool set) => showExtended = set;

  Color _buttonColor;
  Color getButtonColor() => _buttonColor;
  void setButtonColor(Color color) => _buttonColor = color;

  void clickButton() {
    setState(() {
      setShowExtended(!getShowExtended());

    });
  }

  @override
  Widget build(BuildContext context) => new Container(
      color: Colors.white,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /*new Icon(
              Icons.add,
              size: 50.0,
              color: Colors.black12
          ),*/

          SimpleButton(
            backgroundColor: Theme.of(context).accentColor,
            buttonText: Text("ADD NEW GAME",
                style: Theme.of(context).textTheme.button
            ),

            onPressed: clickButton,
            textColor: Colors.white,
          ),

          Column(
            children: <Widget>[
              Text("Hello",
                style: Theme.of(context).textTheme.title
              )

            ],
          )
        ],
      )
  );
}