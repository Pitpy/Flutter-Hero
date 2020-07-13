import "package:flutter/material.dart";

class Detail extends StatelessWidget {
  const Detail({Key key, this.id, this.name, this.power, this.photo})
      : super(key: key);

  final int id;
  final String name;
  final String power;
  final String photo;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 30),
              child: Text(
                this.name,
                style: TextStyle(
                    fontSize: 35, color: Colors.purple, fontFamily: 'saiyan'),
              ),
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Hero(
                      tag: this.id,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Image.asset(
                            photo,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 50, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Power scale: ',
                      style: TextStyle(fontSize: 28, color: Colors.black54),
                    ),
                    Text(
                      this.power,
                      style: TextStyle(fontSize: 35, color: Colors.red),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
