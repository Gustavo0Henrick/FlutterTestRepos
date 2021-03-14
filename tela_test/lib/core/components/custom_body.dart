import 'package:flutter/material.dart';
import 'package:tela_test/core/color.dart';

class CustomBody extends StatelessWidget {
  final Widget body;

  const CustomBody({@required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.deep_skyblue,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: body);
  }
}
