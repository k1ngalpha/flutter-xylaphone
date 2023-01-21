import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylaphoneApp());

class XylaphoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  Expanded buildKey({required Color color, required int keys}) {
    return Expanded(
      //color: Colors.red,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        child: Text(''),
        onPressed: () {
          playSound(keys);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xylaphone'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, keys: 1),
              buildKey(color: Colors.orange, keys: 2),
              buildKey(color: Colors.yellow, keys: 3),
              buildKey(color: Colors.green, keys: 4),
              buildKey(color: Colors.blue, keys: 5),
              buildKey(color: Colors.indigo, keys: 6),
              buildKey(color: Colors.purple, keys: 7),
            ],
          ),
        ),
      ),
    );
  }
}
