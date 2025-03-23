//Lista
const lostNumbers = [4, 8, 15, 16, 23, 42];

//Mapa
const nobleGases = {
  'He': 'Helium',
  'Ne': 'Neon',
  'Ar': 'Argon',
};

//Conjunto
var frogs = {
  'Tree',
  'Poison dart',
  'Glass',
};

void main() {
  print(lostNumbers.last);
  print(nobleGases['Ne']);
  print(frogs.difference({'Poison dart'}));
  print(lostNumbers[2]);

  frogs.add("Swamp");
  print(frogs);
  frogs.add("Tree"); //não irá adicionar, pois é repetido
  print(frogs);
}