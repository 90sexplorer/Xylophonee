import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void SoundMan (int soundgod) {
    final player = AudioCache();
    player.play('note$soundgod.wav');
  }
  Expanded buildkey({Color color, int soundgod}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          SoundMan(soundgod);
        },
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundgod: 1),
              buildkey(color: Colors.orange, soundgod: 2),
              buildkey(color: Colors.yellow, soundgod: 3),
              buildkey(color: Colors.green, soundgod: 4),
              buildkey(color: Colors.teal, soundgod: 5),
              buildkey(color: Colors.blue, soundgod: 6),
              buildkey(color: Colors.purple, soundgod: 7),




            ],
          ),
        ),
      ),
    );
  }
}
