import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {

  final Color backgroundColor;
  final Text buttonText;
  final Function onPressed;

  SimpleButton({
    this.backgroundColor,
    this.buttonText,
    this.onPressed,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: FlatButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              splashColor: this.backgroundColor,
              color: this.backgroundColor,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: buttonText,
                  ),
                ],
              ),
              onPressed: () => onPressed,
            ),
          ),
        ],
      ),
    );
  }
}

class SimpleIconButton extends StatelessWidget {

  final Color backgroundColor;
  final Text buttonText;
  final Function onPressed;
  final List<Widget> icons;

  SimpleIconButton({
    this.backgroundColor,
    this.buttonText,
    this.onPressed,
    this.icons = const [ Icon(Icons.edit) ],
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: FlatButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              splashColor: this.backgroundColor,
              color: this.backgroundColor,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  icons[0],

                  new Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: buttonText,
                  ),

                  icons[1]
                ],
              ),
              onPressed: () => onPressed,
            ),
          ),
        ],
      ),
    );
  }
}