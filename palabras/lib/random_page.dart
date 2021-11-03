import 'dart:math';
import 'package:flutter/material.dart';
import 'word.dart';

class RandomPage extends StatefulWidget {
  const RandomPage({Key? key}) : super(key: key);

  @override
  _RandomPageState createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {
  int _randomIndex = 0;

  _randomWord() {
    setState(() {
      _randomIndex = Random().nextInt(Word.words.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Word.words[_randomIndex].label, style: TextStyle(fontSize: 22)),
          IconButton(
            onPressed: _randomWord,
            icon: Icon(
              Icons.cached_sharp,
              size: 35,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: GestureDetector(
              child: Text(
                'Agregar a favoritos',
                style: TextStyle(color: Colors.white),
              ),
            ),
            color: Colors.black.withOpacity(0.7),
          ),
        ],
      ),
    );
  }
}
