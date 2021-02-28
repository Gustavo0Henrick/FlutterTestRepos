import 'package:flutter/material.dart';
import 'package:flutter_sandbox/pages/login_page.dart';

void main() => runApp(new MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: LoginPage(),
    );
  }
}
