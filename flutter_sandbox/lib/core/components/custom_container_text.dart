import 'package:flutter/material.dart';

class CustomContainerText extends StatelessWidget {
  final String txt;
  final double font;

  const CustomContainerText({Key key, @required this.txt, @required this.font})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(65),
        child: Text(
          txt,
          style: TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.w500,
              fontSize: font),
        ));
  }
}
