/*1. Cree un programa el cual imprima una lista con los primeros 15 números de
la sucesión de Fibonacci.*/
void main() {
  int a = 0;
  int b = 1;

  for (int i = 0; i < 15; i++) {
    print(a);

    int count = a;
    a = b;
    b = count + a;
  }
}
