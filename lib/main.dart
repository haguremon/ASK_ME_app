import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 159, 233),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 92, 151),
        centerTitle: true,
        title: const Text('Ask Me Anything'),
      ),
      body: BallPage(),
    ),
  ));
}

// ignore: use_key_in_widget_constructors
class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int imageNumber = 1;
  void updateImageNumber() {
    imageNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: TextButton(
          onPressed: () {
            setState(() {
              updateImageNumber();
            });
          },
          child: Image.asset('images/ball$imageNumber.png'),
        ),
      ),
    );
  }
}
