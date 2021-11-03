import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(PalabrasApp());
}

class PalabrasApp extends StatelessWidget {
  const PalabrasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
