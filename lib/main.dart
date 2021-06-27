import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class MainScreen extends StatelessWidget {
  Expanded everyThing({required int soundNumber, required Color colour}) {
    return Expanded(
      child: TextButton(
        child: const Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(colour),
        ),
        onPressed: () {
          final player = AudioCache();

          player.play('note$soundNumber.wav');
        },
      ),
    );
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
            children: <Widget>[
              everyThing(soundNumber: 1, colour: Colors.red),
              everyThing(soundNumber: 2, colour: Colors.orange),
              everyThing(soundNumber: 3, colour: Colors.yellow),
              everyThing(soundNumber: 4, colour: Colors.green),
              everyThing(soundNumber: 5, colour: Colors.teal),
              everyThing(soundNumber: 6, colour: Colors.blue),
              everyThing(soundNumber: 7, colour: Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: 'images/xylohone.png',
          nextScreen: MainScreen(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black,
        ));
  }
}
