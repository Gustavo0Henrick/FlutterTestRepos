import 'package:flutter/material.dart';

import 'custom_container_textbox.dart';

class CustomPassowordBox extends StatelessWidget {
  final String txt;
  final TextEditingController controller;

  const CustomPassowordBox(
      {Key key, @required this.txt, @required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainerTextBox(
      txt: txt,
      controller: controller,
      myIcon: Icon(Icons.lock),
      ocultar: true,
    );
  }
}
