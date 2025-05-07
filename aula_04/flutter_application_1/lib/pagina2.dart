import 'package:flutter/material.dart';

class RotaDois extends StatefulWidget {
  State<RotaDois> createState() => RotaDoisPagina();
}

class RotaDoisPagina extends State<RotaDois> {
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rota 2'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}