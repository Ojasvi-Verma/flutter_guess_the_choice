import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: boseC(),
    ),
  );
}

class boseC extends StatelessWidget {
  const boseC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
        ),
      ),
      body: boseUI(),
    );
  }
}

class boseUI extends StatefulWidget {
  const boseUI({Key? key}) : super(key: key);

  @override
  _boseUIState createState() => _boseUIState();
}

class _boseUIState extends State<boseUI> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    Random rand = new Random();
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            num = rand.nextInt(4) + 1;
          });
        },
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Image.asset('images/ball$num.png'),
          ),
        ),
      ),
    );
  }
}
