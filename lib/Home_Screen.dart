import 'package:flutter/material.dart';

import './widgets/ItemList.dart';

class HomeScreen extends StatelessWidget {
  final _items = [
    {
      'id': 1,
      'name': 'Goku',
      'power': '15,000',
      'img': 'assets/images/goku-1.png'
    },
    {
      'id': 2,
      'name': 'Goku Black',
      'power': '1,000,000',
      'img': 'assets/images/goku-black.png'
    },
    {
      'id': 3,
      'name': 'Vegeta',
      'power': '10,000',
      'img': 'assets/images/vegeta-1.png'
    },
    {
      'id': 4,
      'name': 'Vegeta Super Saiyan',
      'power': '54,000',
      'img': 'assets/images/vegeta-2.png'
    },
    {
      'id': 5,
      'name': 'Mini Luffy',
      'power': '5,000',
      'img': 'assets/images/luffy.png'
    },
    {
      'id': 6,
      'name': 'Luffy',
      'power': '9,000',
      'img': 'assets/images/luffy-1.png'
    }
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
