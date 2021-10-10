import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: PalabraRandom(),
    );
  }
}

class PalabraRandom extends StatefulWidget {
  const PalabraRandom({Key? key}) : super(key: key);

  @override
  _PalabraRandomState createState() => _PalabraRandomState();
}

class _PalabraRandomState extends State<PalabraRandom> {
  final _sugerencias = <WordPair>[];
  final _guardadas = <WordPair>{};
  final _fuenteGrande = TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generador de nombres'),
        actions: [
          IconButton(
            onPressed: _pushSaved,
            icon: Icon(Icons.list),
          ),
        ],
      ),
      body: _construirSugerencias(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final tiles = _guardadas.map((WordPair pair) {
            return ListTile(
              title: Text(
                pair.asPascalCase,
                style: _fuenteGrande,
              ),
            );
          });
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(context: context, tiles: tiles).toList()
              : <Widget>[];

          return Scaffold(
            appBar: AppBar(
              title: Text('Sugerencias guardadas'),
            ),
            body: ListView(
              children: divided,
            ),
          );
        },
      ),
    );
  }

  Widget _construirSugerencias() {
    return ListView.builder(itemBuilder: (BuildContext _context, int i) {
      if (i.isOdd) {
        return Divider();
      }

      final int index = i ~/ 2;

      if (index >= _sugerencias.length) {
        _sugerencias.addAll(generateWordPairs().take(10));
      }

      return _buildRow(_sugerencias[index]);
    });
  }

  Widget _buildRow(WordPair pair) {
    final guardada = _guardadas.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _fuenteGrande,
      ),
      trailing: Icon(
        guardada ? Icons.favorite : Icons.favorite_border,
        color: guardada ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (guardada) {
            _guardadas.remove(pair);
          } else {
            _guardadas.add(pair);
          }
        });
      },
    );
  }
}
