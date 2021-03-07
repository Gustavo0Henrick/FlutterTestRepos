import 'package:flutter/material.dart';
import 'package:tela_test/core/color.dart';

import 'package:tela_test/core/components/custom_body.dart';
import 'package:tela_test/core/components/custom_card.dart';

import 'dart:ui';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.deep_skyblue,
        title: Center(child: Text('Card View Demo')),
        elevation: 0,
      ),
      backgroundColor: AppColors.alice_blue,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.deep_skyblue,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.loupe),
            label: 'Descobrir',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

/*class HomePage extends StatefulWidget {
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
        backgroundColor: AppColors.main_color,
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        CustomBody(
          body: CardList(),
        ),
      ])),
      backgroundColor: AppColors.alice_blue,
    );
  }
}

addCard() {
  return CustomCard(txt: 'teste', alt: 150, lar: 250);
}

Card(
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
