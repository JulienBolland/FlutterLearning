import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
              child: MyXylophone()
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class MyXylophone extends StatelessWidget {

  void playSound(int nb){
    final player = AudioCache();
    player.play('note$nb.wav');
  }

  Expanded buildTap(Color thisColor, int nb){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(nb);
        },
        child: Text(
        ""
        ),
        color: thisColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildTap(Colors.red, 1),
        buildTap(Colors.orange, 2),
        buildTap(Colors.yellow, 3),
        buildTap(Colors.green, 4),
        buildTap(Colors.teal, 5),
        buildTap(Colors.blue, 6),
        buildTap(Colors.purple, 7),
      ],
    );
  }
}
