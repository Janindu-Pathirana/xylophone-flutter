import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());
final audioPlayer = AudioCache();

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("XylophoneApp"),
          leading: Icon(Icons.music_note),
        ),
        body: appbody(),
      ),
    );
  }
}

Expanded buildButtons(int a) {
  var color = Colors.black;

  switch (a) {
    case 1:
      color = Colors.red;
      break;
    case 2:
      color = Colors.green;
      break;

    case 3:
      color = Colors.yellow;
      break;

    case 4:
      color = Colors.purple;
      break;

    case 5:
      color = Colors.blue;
      break;

    case 6:
      color = Colors.greenAccent;
      break;

    case 7:
      color = Colors.yellowAccent;
      break;
  }

  return Expanded(
    child: TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
      onPressed: () {
        // print("pass");
        sound(a);
      },
    ),
  );
}

void sound(int a) {
  final audioPlayer = AudioCache();

  print(a);
  audioPlayer.play('note$a.wav');
}

class appbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildButtons(1),
        buildButtons(2),
        buildButtons(3),
        buildButtons(4),
        buildButtons(5),
        buildButtons(6),
        buildButtons(7),
      ],
    );
  }
}
