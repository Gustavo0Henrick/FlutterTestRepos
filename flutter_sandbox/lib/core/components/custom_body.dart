import 'package:flutter/material.dart';

class CustomBodyContainer extends StatelessWidget {
  final Widget body;

  CustomBodyContainer({@required this.body});

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: MediaQuery.of(context).size.height,
      width: _width,
      child: body,
    );
  }
}
