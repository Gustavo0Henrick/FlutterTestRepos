import 'package:flutter/material.dart';
import 'package:flutter_sandbox/core/components/custom_button.dart';
import 'package:flutter_sandbox/core/components/custom_button_text_.dart';
import 'package:flutter_sandbox/core/components/custom_container_text.dart';

import 'package:flutter_sandbox/core/components/custom_input_box.dart';
import 'package:flutter_sandbox/core/components/custom_password_box.dart';

class LoginPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              CustomContainerText(txt: 'Login', font: 50),
              CustomInputBox(
                  txt: 'Nome de Usuario',
                  controller: nameController), //box aqui
              CustomPassowordBox(txt: 'Senha', controller: passwordController),
              CustomButtonText(
                  txt: 'Esqueci a senha', font: 16, onPressed: apertou),
              CustomButton(txt: 'Entrar', font: 16),
              Container(
                  child: Row(
                children: <Widget>[
                  Text('Não tem uma conta?'),
                  CustomButtonText(txt: 'Criar', font: 20, onPressed: apertou),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ))
            ],
          )),
      backgroundColor: Colors.white,
    );
  }
}

// ignore: missing_return
Function apertou() {
  print('Pressionado');
}
