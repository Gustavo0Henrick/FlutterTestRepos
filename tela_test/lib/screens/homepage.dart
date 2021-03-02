import 'package:flutter/material.dart';
import 'package:tela_test/core/components/custom_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.add),
            onPressed: addCard,
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
      body: SingleChildScrollView(
        child: Column(
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
      ),
      backgroundColor: Colors.blue[50],
    );
  }
}

addCard() {}
