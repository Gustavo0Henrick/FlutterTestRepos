import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String txt;
  final double alt;
  final double lar;
  final TextEditingController controller;

  const CustomCard(
      {Key key,
      @required this.txt,
      @required this.alt,
      @required this.lar,
      this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            elevation: 5,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                  ),
                  title: Text('Titulo do Cartão'),
                  subtitle: Text('Texto Resumido do Cartão'),
                ),
                ButtonTheme(
                  // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      TextButton(
                        child: Text('Ler Mais'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
