import 'package:flutter/material.dart';

class CustomContainerTextBox extends StatelessWidget {
  final String txt;
  final TextEditingController controller;

  const CustomContainerTextBox(
      {Key key, @required this.txt, @required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        autofocus: false,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          labelText: txt,
        ),
      ),
    );
  }
}
