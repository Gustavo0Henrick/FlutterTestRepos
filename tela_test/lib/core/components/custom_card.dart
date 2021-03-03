import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String txt;
  final double alt;
  final double lar;
  final TextEditingController controller;

  const CustomCard(
      {Key key,
      @required this.txt,
      @required this.alt,
      @required this.lar,
      this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: alt,
      width: lar,
      child: Card(
        elevation: 5,
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Text(txt),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Botão')),
        ]),
      ),
    );
  }
}
