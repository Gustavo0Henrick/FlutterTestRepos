import 'package:flutter/material.dart';
import 'package:tela_test/core/components/card_custom_container_text.dart';
import 'package:tela_test/core/components/custom_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Center(
          child: Text(
            'Card view demo',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue[275],
      ),
      body: ListView(
          children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: CustomCard(
                  txt: 'Primeiro Cartão',
                  alt: 360,
                  lar: 350,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: CustomCard(
                  txt: 'Segundo Cartão',
                  alt: 200,
                  lar: 350,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: CustomCard(
                  txt: 'Terceiro Cartão',
                  alt: 200,
                  lar: 350,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: CustomCard(
                  txt: 'Quarto Cartão',
                  alt: 200,
                  lar: 350,
                ),
              ),
            )
          ],
        ),
      ].toList()),
      backgroundColor: Colors.blue[50],
    );
  }
}

addCard() {
  return CustomCard(txt: 'teste', alt: 150, lar: 250);
}

/*Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        margin: EdgeInsets.all(10),
        elevation: 5,
        color: Colors.white,
        child: Container(
          height: 250,
          width: 350,
          child: Column(children: [
            ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
              title: Text('TItulo do Cartão'),
              subtitle: Text('Texto resumido do cartão'),
            ),
            ButtonTheme(
              child: ButtonBar(
                children: [
                  TextButton(
                    child: const Text('Ler mais'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ]),
        ));*/
