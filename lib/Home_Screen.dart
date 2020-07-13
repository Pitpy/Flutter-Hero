import 'package:flutter/material.dart';

import './widgets/ItemList.dart';

class HomeScreen extends StatelessWidget {
  final _items = [
    {'id': 1, 'name': 'Goku', 'img': 'assets/images/goku-1.png'},
    {'id': 2, 'name': 'Goku Black', 'img': 'assets/images/goku-black.png'},
    {'id': 3, 'name': 'Vegeta', 'img': 'assets/images/vegeta-1.png'},
    {
      'id': 4,
      'name': 'Vegeta Super Saiyan',
      'img': 'assets/images/vegeta-2.png'
    },
    {'id': 5, 'name': 'Mini Luffy', 'img': 'assets/images/luffy.png'},
    {'id': 6, 'name': 'Luffy', 'img': 'assets/images/luffy-1.png'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Hero"),
      ),
      body: ItemList(
        item: this._items,
      ),
    );
  }
}
