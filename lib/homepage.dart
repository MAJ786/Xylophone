import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main()=> runApp(HomePage());


class HomePage extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildkey({
    required Color color, soundNumber
  }) {
    return Expanded(
      child:OutlinedButton(
        onPressed: () {playSound(soundNumber);},
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.black),
          backgroundColor: color, // Add color to the button's background
        ),
        child: Text('Press to Play sound',style: TextStyle(color: Colors.black),),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.pinkAccent,
        body: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey( color: Colors.red, soundNumber: 1),
              buildkey( color: Colors.orange, soundNumber: 2),
              buildkey( color: Colors.yellowAccent, soundNumber: 3),
              buildkey( color: Colors.green, soundNumber: 4),
              buildkey( color: Colors.teal, soundNumber: 5),
              buildkey( color: Colors.blue, soundNumber: 6),
              buildkey( color: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
