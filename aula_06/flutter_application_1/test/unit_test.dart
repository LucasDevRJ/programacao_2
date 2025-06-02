import 'package:flutter_application_1/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Teste do Contador', () {
    test('Teste com menos de 10 cliques', () {
      var resultado = pushingButtonText.pushingText(7);
      expect(resultado, "Você pressionou poucas vezes");
    });
    test('Teste com menos de 50 cliques', () {
      var resultado = pushingButtonText.pushingText(32);
      expect(resultado, "Você pressionou várias vezes");
    });
    test('Teste com mais de 100 cliques', () {
      var resultado = pushingButtonText.pushingText(110);
      expect(resultado, "Você pressionou muitas vezes");
    });
  });
}