import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent.shade100,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Center(
            child: Text(
              'Ask Me Baby',
              style: TextStyle(
                  color: Colors.limeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'Overlock',
                  letterSpacing: 2.5),
            ),
          ),
        ),
        body: const BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballno = 1;

  change() {
    ballno = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
children: [
           Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  change();
                });
              },
              child: Image.asset('images/ball$ballno.png'),
            ),
          ),
      ],
    );
  }
}
