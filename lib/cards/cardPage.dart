import 'package:flutter/material.dart';

import 'cardDraggble.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  bool showAlignmentCards=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: Row(
          children: <Widget>[
            Text(
              "ROOMS",
              style: TextStyle(
                fontSize: 12.0,
                letterSpacing: 3.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            /*Container(
              width: 15.0,
              height: 15.0,
              margin: EdgeInsets.only(bottom: 10.0),
              alignment: Alignment.center,
              child: Text(
                
              ),
            )*/
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          CardsSectionDraggable(),
          buttonsRow()
        ],
      )
    );
  }

  Widget buttonsRow() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton
          (
            heroTag: "btn1",
            mini: true,
            onPressed: () {},
            backgroundColor: Colors.white,
            child: new Icon(Icons.loop, color: Colors.yellow),
          ),
          new Padding(padding: new EdgeInsets.only(right: 8.0)),
          new FloatingActionButton
          (
            heroTag: "btn2",
            onPressed: () {},
            backgroundColor: Colors.white,
            child: new Icon(Icons.close, color: Colors.red),
          ),
          new Padding(padding: new EdgeInsets.only(right: 8.0)),
          new FloatingActionButton
          (
            heroTag: "btn3",
            onPressed: () {},
            backgroundColor: Colors.white,
            child: new Icon(Icons.favorite, color: Colors.green),
          ),
          new Padding(padding: new EdgeInsets.only(right: 8.0)),
          new FloatingActionButton
          (
            heroTag: "btn4",
            mini: true,
            onPressed: () {},
            backgroundColor: Colors.white,
            child: new Icon(Icons.star, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}