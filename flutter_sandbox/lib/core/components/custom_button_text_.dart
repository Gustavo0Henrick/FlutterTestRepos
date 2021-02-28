import 'package:flutter/material.dart';

class CustomButtonText extends StatelessWidget {
  final String txt;
  final double font;
  final Function onPressed;

  const CustomButtonText(
      {Key key,
      @required this.txt,
      @required this.font,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: TextStyle(fontSize: font),
        primary: Colors.purple[200],
      ),
      onPressed: onPressed, //onPressed
      child: Text(txt),
    );
  }
}
