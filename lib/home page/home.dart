import 'package:flutter/material.dart';
import 'package:flutter_swipe_app/cards/cardPage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text(
            "Click Here",
            style: TextStyle(
              fontSize: 20,
              //backgroundColor: Colors.blueAccent
            ),
          ),
          color: Colors.blueAccent,
          textColor: Colors.white,
          padding: EdgeInsets.all(10.0),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>CardPage())
            );
          },
        ),
      ),
    );
  }
}