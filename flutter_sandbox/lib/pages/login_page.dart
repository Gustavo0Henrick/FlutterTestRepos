import 'package:flutter/material.dart';
import 'package:flutter_sandbox/core/components/custom_button.dart';
import 'package:flutter_sandbox/core/components/custom_button_text_.dart';
import 'package:flutter_sandbox/core/components/custom_container_text.dart';
import 'package:flutter_sandbox/core/components/custom_container_textbox.dart';

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
      appBar: AppBar(
        centerTitle: true,
        title: Text('Demonstração Tela de Login',
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.green,
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              CustomContainerText(txt: 'Login', font: 50), //container aqui
              CustomContainerTextBox(
                  txt: 'Nome de Usuario', controller: nameController),
              CustomContainerTextBox(
                  txt: 'Senha', controller: passwordController),
              CustomButtonText(
                txt: 'Esqueci a senha',
                font: 16,
                onPressed: apertou,
              ), //botao aqui
              CustomButton(
                txt: 'Entrar',
                font: 16,
              ), //botao aqui
              Container(
                  child: Row(
                children: <Widget>[
                  Text('Não tem uma conta?'),
                  CustomButtonText(
                    txt: 'Criar',
                    font: 20,
                    onPressed: apertou,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ))
            ],
          )),
      backgroundColor: Colors.cyan[50],
    );
  }
}

// ignore: missing_return
Function apertou() {
  print('Pressionado');
}
