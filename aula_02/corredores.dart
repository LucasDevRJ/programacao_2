import 'dart:io';

var posicao = 1;

abstract class Pessoa {
  var nome; //nome do ciclista
  var cadencia; //quantas pedaladas ele faz por segundo 
  var roda; //quanta distancia a roda percorre em uma pedalada

  void correr(var quantidadeDeVoltas, var distanciaDeCadaVolta);
}

class Ciclista implements Pessoa {
  var nome; 
  var cadencia; 
  var roda; 

  Ciclista(this.nome, this.cadencia, this.roda);

  Future correr(var quantidadeDeVoltas, var distanciaDeCadaVolta) async {
    var tempo = distanciaDeCadaVolta / (cadencia * roda);
    //distancia = espaço inicial + velocidade x tempo
    //distancia = velocidade x tempo
    //tempo = distancia / velocidade

    for (int voltas = 1; voltas < quantidadeDeVoltas + 1; voltas++) {
      await Future.delayed(Duration(seconds: tempo.round()));
      print('$nome está na volta de número $voltas!');
    }    
    chegada(nome);
  }
}

class Motorista implements Pessoa {
  var nome;
  var cadencia;
  var roda;

  Motorista(this.nome, this.cadencia, this.roda);

  Future correr(var quantidadeDeVoltas, var distanciaDeCadaVolta) async {
    var tempo = distanciaDeCadaVolta / (100 * cadencia * roda);
    for (int voltas = 1; voltas < quantidadeDeVoltas + 1; voltas++) {
      await Future.delayed(Duration(seconds: tempo.round()));
      print('$nome está na volta de número $voltas!');
    }    
    chegada(nome);
  }
}

void chegada(var nome) {
  print('$nome chegou na linha de chegada e passou na posição: $posicao');
  posicao++;
}

void main() {
  const numeroDeVoltas = 5;
  const metragemDeCadaVolta = 10;

  var ciclista1 = new Ciclista('Lucas', 5, 0.5);
  //ciclista1.correr(distancia);

  var ciclista2 = new Ciclista('Michel', 7, 0.3);
  //ciclista2.correr(distancia);

  var ciclista3 = new Ciclista('George', 4, 0.8);
  //ciclista3.correr(distancia);

  List<Pessoa> corredores = [];
  corredores.add(ciclista1);
  corredores.add(ciclista2);
  corredores.add(ciclista3);
  corredores.add(Motorista('Fábio', 3, 0.4));

  for (var corredor in corredores) {
    corredor.correr(numeroDeVoltas, metragemDeCadaVolta);
  }
}