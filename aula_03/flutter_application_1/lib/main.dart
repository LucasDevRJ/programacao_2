import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: Contador(),
    );
  }
}

class Contador extends StatefulWidget {
  State<Contador> createState() => ContadorDaPagina();
}

class ContadorDaPagina extends State<Contador> {
  var contagem = 0;

  void adicionaNaContagem() {
    setState(() {
      contagem++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Image.network
              ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmgDzxNPcuTQbW3hfZsP3c51ShrR1_HZc3EA&s',
              height: 500
              ),
              onVerticalDragEnd: (DragEndDetails details) => {
                adicionaNaContagem(),
              },
            ), 
            Text('Você apertou o botão essa quantidade de vezes:'),
            Text('$contagem')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: adicionaNaContagem,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Gaveta'),
            ),
            ListTile(
              title: Text('Texto 1'),
              onTap: adicionaNaContagem,
            ),
            ListTile(
              title: Text('Texto 2'),
              onLongPress: adicionaNaContagem,
            )
          ],
        ),
      ),
    );
  }
}

/*
class MeuApp extends StatefulWidget {
  State<MeuApp> createState() => MeuAppPagina();
}

class MeuApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Olá Mundo!'),
    );
  }
}

class MeuAppPagina extends State<MeuApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text("Olá Mundo!"),
      )
    );
  }
}

class MeuAppPagina extends State<MeuApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Título do aplicativo"),
        ),
        body: Center(
          child: Text("Olá Mundo!"),
        ),
      ),
    );
  }
}

*/