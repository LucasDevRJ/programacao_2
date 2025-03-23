int timesTwo(int x) {
  return x * 2;
}

int timesFour(int x) => timesTwo(timesTwo(x));

int runTwice(int x, int Function(int) f) {
  for (var i = 0; i < 2; i++) {
    x = f(x);
  }
  return x;
}

void main() {
  print("4 vezes 2 é ${timesTwo(4)}");
  print("4 vezes 4 is ${timesFour(4)}");
  print("2 x 2 x 2 é ${runTwice(2, timesTwo)}");
}