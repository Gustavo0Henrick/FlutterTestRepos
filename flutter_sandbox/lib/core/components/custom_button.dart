import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String txt;
  final double font;

  const CustomButton({Key key, @required this.txt, @required this.font})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: TextStyle(fontSize: font),
              primary: Colors.cyan,
              onPrimary: Colors.white,
            ),
            onPressed: () {
              print('Entrou');
            },
            child: Text(txt)));
    /*textColor: Colors.white,
                      color: Colors.cyan,
                      child: Text('Entrar'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),*/
  }
}
