import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      home: realtimeApp(),
    );
  }
}

class realtimeApp extends StatefulWidget {
  State<realtimeApp> createState() => realtimeAppState();
}

class realtimeAppState extends State<realtimeApp> {

  DatabaseReference referencia = FirebaseDatabase.instance.ref();

  void criarDado() {
    referencia.child('Dados').set({
      'nome' : 'Lucas',
      'Cidade': 'Rio de Janeiro',
      'Profissão': 'Programador'
    });
  }

  Future<void> lerDado() async {
    var snapshot = await referencia.child('dados').get();
    if (snapshot.exists) {
      print(snapshot.value);
    } else {
      print('Não tem valor armazenado na base de dados.');
    }
  }

  void atualizarDado() {
    referencia.child('dados').update({ 
      'Profissão': 'Desenvolvedor Back-end'
    });
  }

  void deletarDado() {
    referencia.child('dados').remove();
  }


  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Base de Dados em Tempo Real')
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: criarDado, child: Text('Criar Dado')),
            TextButton(onPressed: lerDado, child: Text('Ler Dado')),
            TextButton(onPressed: atualizarDado, child: Text('Atualizar Dado')),
            TextButton(onPressed: deletarDado, child: Text('Deletar Dado'))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      )
    );
  }
}