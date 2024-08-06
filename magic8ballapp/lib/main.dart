import 'package:flutter/material.dart';
import 'dart:math';

void main () {
  return runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
      title: const Center(
          child: Text(
              'Magic 8 Ball',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.black,
            ),
          ),
      ),
      ),
      body: MainPage(),
    ),
  )
  );
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int number = 1;

  void ramdomNumber() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            ramdomNumber();
          },
          child: Image.asset('images/ball$number.png')),
      // child: Image.asset(),
    );
  }
}
