import 'package:flutter/material.dart';

void main() {
  //runApp(MyApp());
  //runApp(MyApp2());
  runApp(MyApp3());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Título do Aativo'),
        ),
        body: Center(
          child: Text('Olá Mundo!'),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text('Hello World')),
    );
  }
}

class MyApp3 extends StatefulWidget {
  @override
  State<MyApp3> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(child: Text('Hello World')),
    );
  }
}