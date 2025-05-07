import 'package:flutter/material.dart';
import 'pagina2.dart';

void main() {
  runApp(
    MaterialApp(initialRoute: '/RotaNomeadaUm',
    routes: {
      '/RotaNomeadaUm': (context) => RotaNomeadaUm(),
      '/RotaNomeadaDois': (context) => RotaNomeadaDois(),
    }
    )
  );
}

class RotaNomeadaUm extends StatefulWidget {
  State<RotaNomeadaUm> createState() => RotaNomeadaUmPagina();
}

class RotaNomeadaUmPagina extends State<RotaNomeadaUm> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rota Nomeada Um'),
      ),
      body: Center(
        child: Hero(
        tag: 'widget herói',
        child: CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.pushNamed(context, '/RotaNomeadaDois');
        },
      )
    );
  }
}

class RotaNomeadaDois extends StatefulWidget {
  State<RotaNomeadaDois> createState() => RotaNomeadaDoisPagina();
}

class RotaNomeadaDoisPagina extends State<RotaNomeadaDois> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rota Nomeada Dois'),
      ),
      body: Center(
        child: Hero(
        tag: 'widget herói',
        child: Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
          height: 300,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pushNamed(context, '/RotaNomeadaUm');
        },
      )
    );
  }
}

