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
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.add),
            onPressed: () {
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: Text('Adionar cartão:'),
                        content: CustomContainerTextBox(
                          txt: 'Digite aqui...',
                          ocultar: false,
                          controller: nameController,
                        ),
                        actions: [
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 60.0, left: 10.0),
                              child: TextButton(
                                onPressed: () {},
                                child: Text('Descartar'),
                                style: TextButton.styleFrom(
                                  primary: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 10.0, left: 60.0),
                              child: TextButton(
                                child: Text('Adicionar'),
                                onPressed: () {
                                  addCard();
                                },
                              ),
                            ),
                          ])
                        ],
                      ));
            },
          ),
        ],
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
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CustomCard(
                  txt: 'Primeiro Cartão',
                  alt: 150,
                  lar: 250,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CustomCard(
                  txt: 'Segundo Cartão',
                  alt: 150,
                  lar: 250,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CustomCard(
                  txt: 'Terceiro Cartão',
                  alt: 150,
                  lar: 250,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CustomCard(
                  txt: 'Quarto Cartão',
                  alt: 150,
                  lar: 250,
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
