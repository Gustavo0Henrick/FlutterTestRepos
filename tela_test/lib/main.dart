import 'package:flutter/material.dart';
import 'package:tela_test/core/colorKey.dart';
import 'screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsApp',
      theme: ThemeData(
        primaryColor: KeyPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
