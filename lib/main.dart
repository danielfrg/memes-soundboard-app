import 'package:flutter/material.dart';
import 'sound.dart';

SoundManager soundManager = new SoundManager();

void _playSound(id) {
  soundManager.playLocal(id + ".mp3").then((onValue) {
    //do something?
  });
}

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  // final List<WordPair> _suggestions = <WordPair>[];
  // final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Memes Soundboard'),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new RaisedButton(child: new Text('Tengo Miedo!'), onPressed: () => _playSound("tengo-miedo"), ),
            new RaisedButton(child: new Text('Ya no aguanto, ya no aguanto'), onPressed: () => _playSound("ya-no-aguanto"), ),
            new RaisedButton(child: new Text('Ya no aguanto, ya no aguanto (largo)'), onPressed: () => _playSound("ya-no-aguanto-largo"), ),
          ],
        ),
      ),
    );
  }
}
