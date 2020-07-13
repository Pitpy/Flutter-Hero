import 'package:flutter/material.dart';

import 'Detail.dart';

class ItemList extends StatelessWidget {
  final List item;
  const ItemList({this.item});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      children: <Widget>[
        ...(item
            .map(
              (e) => Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, .2),
                        blurRadius: 12,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: e['id'],
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                            child: SizedBox(
                              width: 120,
                              height: 120,
                              child: Image.asset(
                                e['img'],
                                fit: BoxFit.contain,
                              ),
                            ),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detail(
                                  id: e['id'],
                                  name: e['name'],
                                  photo: e['img'],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          e["name"],
                          style: TextStyle(color: Color.fromRGBO(0, 0, 0, .6)),
                        ),
                      )
                    ],
                  )),
            )
            .toList()),
      ],
    );
  }
}
