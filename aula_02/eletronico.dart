abstract class Eletronico {
  //atributos da classe
  var nome;
  var preco;

  //construtor da classe 
  Eletronico(this.nome, this.preco);

  void ligar();
  void exibirPreco();
}

class Celular implements Eletronico {

  //atributos da classe
  var nome;
  var preco;

  //construtor da classe 
  Celular(this.nome, this.preco);

  //métodos da abstração
  void ligar() {
    print('O celular $nome acabou de ser ligado!');
  }

  void exibirPreco() {
    print('O preço do celular $nome é $preco reais.');
  }
}

class Televisao implements Eletronico {

  //atributos da classe
  var nome;
  var preco;

  //construtor da classe 
  Televisao(this.nome, this.preco);

  //métodos da abstração
  void ligar() {
    print('A televisão $nome acabou de ser ligado!');
  }

  void exibirPreco() {
    print('O preço da televisão $nome é $preco reais.');
  }
}

void main() {
  var eletronico1 = Celular('Galaxy J9', 3000.00);
  var eletronico2 = Televisao('Smart TV Philips 40 polegadas', 2000.00);

  List<Eletronico> eletronicos = [];
  eletronicos.add(eletronico1);
  eletronicos.add(eletronico2);

  for (var eletronico in eletronicos) {
    eletronico.ligar();
    eletronico.exibirPreco();
  }
}