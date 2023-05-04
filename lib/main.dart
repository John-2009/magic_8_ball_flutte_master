import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF7B1FA2),
        appBar: AppBar(
          title: const Center(child: Text('Ask Me Anything')),
          backgroundColor: Color(0xFF9C27B0),
        ),
        body: const MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  void ram (){
    ballface = Random().nextInt(5)+1;
  }
  int ballface = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(
            onPressed: () {
              setState(() {
                ram();
                print(ballface);
              },
              );
            },
            child: Image.asset('images/ball$ballface.png'),
          ),
          ),
        ],
      ),
    );
  }
}