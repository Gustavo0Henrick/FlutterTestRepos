import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String txt;
  final double alt;
  final double lar;

  const CustomCard(
      {Key key, @required this.txt, @required this.alt, @required this.lar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: alt,
      width: lar,
      child: Card(
        elevation: 5,
        color: Colors.white,
        child: Center(
          child: Text(txt),
        ),
      ),
    );
  }
}
