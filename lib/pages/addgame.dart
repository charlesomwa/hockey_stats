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

          Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: new Column(

              children: <Widget>[
                TextField(style: Theme.of(context).textTheme.body1, decoration: InputDecoration(hintText: "Game Name"),)
              ],
            ),
          ),

          SimpleIconButton(
            backgroundColor: Theme.of(context).accentColor,
            buttonText: Text("1 Goal(s)", style: Theme.of(context).textTheme.button),
            //icons: [IconButton(icon: Icon(Icons.account_circle)), IconButton(icon: Icon(Icons.calendar_view_day))],
            icons: [
              Container(
                padding: EdgeInsets.only(right: 90),
                child: Text("-", style: Theme.of(context).textTheme.button.apply(fontSizeFactor: 1.5),),
              ),
              Container(
                padding: EdgeInsets.only(left: 90),
                child: Icon(Icons.add),
              ),
            ],
            onPressed: clickButton,

          ),

          SimpleIconButton(
            backgroundColor: Theme.of(context).accentColor,
            buttonText: Text("3 Assist(s)", style: Theme.of(context).textTheme.button),
            //icons: [IconButton(icon: Icon(Icons.account_circle)), IconButton(icon: Icon(Icons.calendar_view_day))],
            icons: [
              Container(
                padding: EdgeInsets.only(right: 80),
                child: Text("-", style: Theme.of(context).textTheme.button.apply(fontSizeFactor: 1.5),),
              ),
              Container(
                padding: EdgeInsets.only(left: 80),
                child: Icon(Icons.add),
              ),
            ],
            onPressed: clickButton,

          ),

          SimpleIconButton(
            backgroundColor: Theme.of(context).accentColor,
            buttonText: Text("1 Penalty(ies)", style: Theme.of(context).textTheme.button),
            //icons: [IconButton(icon: Icon(Icons.account_circle)), IconButton(icon: Icon(Icons.calendar_view_day))],
            icons: [
              Container(
                padding: EdgeInsets.only(right: 70),
                child: Text("-", style: Theme.of(context).textTheme.button.apply(fontSizeFactor: 1.5),),
              ),
              Container(
                padding: EdgeInsets.only(left: 70),
                child: Icon(Icons.add),
              ),
            ],
            onPressed: clickButton,

          )



          /*SimpleButton(
            backgroundColor: Theme.of(context).accentColor,
            buttonText: Text("ADD NEW GAME",
                style: Theme.of(context).textTheme.button
            ),

            onPressed: clickButton,
            textColor: Colors.white,
          ),*/


        ],
      )
  );
}