import 'package:flutter/material.dart';

class CustomContainerTextBox extends StatefulWidget {
  final String txt;
  final TextEditingController controller;
  final Widget myIcon;
  final Widget myIcon2;
  final bool ocultar;

  const CustomContainerTextBox(
      {Key key,
      @required this.txt,
      @required this.controller,
      this.myIcon,
      @required this.ocultar,
      this.myIcon2})
      : super(key: key);

  @override
  _CustomContainerTextBoxState createState() => _CustomContainerTextBoxState();
}

class _CustomContainerTextBoxState extends State<CustomContainerTextBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 80,
      padding: EdgeInsets.all(10),
      child: TextField(
        obscureText: widget.ocultar,
        autofocus: false,
        controller: widget.controller,
        decoration: InputDecoration(
          prefixIcon: widget.myIcon,
          suffixIcon: widget.myIcon2,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
          labelText: widget.txt,
        ),
      ),
    );
  }
}
