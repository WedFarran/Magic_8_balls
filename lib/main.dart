import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MagicBalls());
}

class MagicBalls extends StatefulWidget {
  const MagicBalls({super.key});

  @override
  State<MagicBalls> createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ask me anything'),
        ),
        body: InkWell(
          onTap: () => setState(() {
            ballNumber = Random().nextInt(5) + 1;
          }),
          child: Center(
            child: Image.asset('assets/images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}
