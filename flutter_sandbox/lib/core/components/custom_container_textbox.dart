import 'package:flutter/material.dart';

class CustomContainerTextBox extends StatelessWidget {
  final String txt;
  final TextEditingController controller;
  final Widget myIcon;
  final bool ocultar;

  const CustomContainerTextBox(
      {Key key, @required this.txt, @required this.controller, this.myIcon, @required this.ocultar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        obscureText: ocultar,
        autofocus: false,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: myIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          labelText: txt,
        ),
      ),
    );
  }
}
