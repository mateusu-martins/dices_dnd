import "dart:math";
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade800,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee D20',
              style: TextStyle(
                fontSize: 50.0,
                fontFamily: "MedievalSharp",
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void diceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(20) + 1;
      rightDiceNumber = Random().nextInt(20) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/back.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  diceFace();
                },
                child: Image.asset(
                  "images/dice$leftDiceNumber.png",
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  diceFace();
                },
                child: Image.asset(
                  "images/dice$rightDiceNumber.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
