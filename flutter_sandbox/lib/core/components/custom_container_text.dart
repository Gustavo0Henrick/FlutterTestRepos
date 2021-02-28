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
        padding: EdgeInsets.all(50),
        child: Text(
          txt,
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.w500, fontSize: font),
        ));
  }
}
