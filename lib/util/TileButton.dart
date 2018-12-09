import 'package:flutter/material.dart';

class TileButton extends StatelessWidget {

  final Color backgroundColor;
  final Text buttonText;
  final Color textColor;
  final Function onPressed;
  final Icon icon;
  final double topMargin;
  final double leftPadding;
  final double rightPadding;
  final double topPadding;
  final double bottomPadding;
  final double borderRadius;


  TileButton({
    this.backgroundColor,
    this.buttonText,
    this.textColor,
    this.onPressed,
    this.icon,
    this.topMargin,
    this.leftPadding,
    this.rightPadding,
    this.topPadding,
    this.bottomPadding,
    this.borderRadius
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topMargin),
      padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: FlatButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(borderRadius)),
              splashColor: this.backgroundColor,
              color: this.backgroundColor,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
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