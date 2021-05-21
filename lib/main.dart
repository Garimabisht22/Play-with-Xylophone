import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylo());
}
class Xylo extends StatelessWidget {
  int tap;
  Expanded buildkey (
      { Color color, int tap}
      )
  {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color
        ),
        onPressed: () {
          playmusic(tap);
        },
      ),
    );
  }
  void playmusic(int tap)
  {
    final player = new AudioCache();
    player.play('note$tap.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              buildkey(color: Colors.red, tap : 1 ),
              buildkey(color: Colors.orange, tap : 2),
              buildkey(color: Colors.yellowAccent, tap : 3),
              buildkey(color: Colors.green, tap : 4),
              buildkey(color: Colors.pinkAccent, tap : 5),
              buildkey(color: Colors.blue, tap : 6),
              buildkey(color: Colors.lightBlue, tap : 7),
            ],
          ),),
      ),
    );
  }
}
