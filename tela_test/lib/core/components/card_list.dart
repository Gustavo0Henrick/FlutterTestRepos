import 'package:flutter/material.dart';
import 'package:tela_test/core/components/custom_card.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
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
    );
  }
}
