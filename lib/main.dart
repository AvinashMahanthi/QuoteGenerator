import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[600],
          appBar: AppBar(
            title: Center(child: Text("JOKER QUOTES")),
            backgroundColor: Colors.grey[900],
          ),
          body: QuoteGeneator()),
    ),
  );
}

class QuoteGeneator extends StatefulWidget {
  @override
  _QuoteGeneatorState createState() => _QuoteGeneatorState();
}

class _QuoteGeneatorState extends State<QuoteGeneator> {
  int quote = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            quote = Random().nextInt(19) + 1;
          });
        },
        child: Image(
          image: AssetImage("assets/joker$quote.jpg"),
        ),
      ),
    );
  }
}
