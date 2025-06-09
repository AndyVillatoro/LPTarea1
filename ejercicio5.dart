void main() {
  CuentaBancaria cuenta = CuentaBancaria(
    titular: "Mohammed Smith",
    saldo: 1000,
  );

  cuenta.consultarSaldo();
  cuenta.depositar(-50); //prueba depositar en negativo
  cuenta.depositar(2500);
  cuenta.retirar(99.99);
  cuenta.retirar(4000); //prueba retirar mas del saldo actual
  cuenta.consultarSaldo();
}

//Clase cuenta bancaria
class CuentaBancaria {
  final String titular; //final para que no se cambie el nombre
  double saldo;

  //Constructor
  CuentaBancaria({required this.titular, this.saldo = 0});

  // Metodo depositar dinero
  void depositar(double cantidad) => cantidad > 0
      ? saldo += cantidad
      : print("La cantidad a depositar debe ser mayor que cero");

  // Metodo retirar dinero
  void retirar(double cantidad) => (cantidad > 0 && cantidad <= saldo)
      ? saldo -= cantidad
      : print(
          cantidad > saldo
              ? "No hay tanto pisto en la cuenta, saldo actual: $saldo"
              : "La cantidad a retirar debe ser mayor que cero",
        );

  // Metodo para consultar el saldo actual
  double consultarSaldo() {
    // double para poder usar el saldo en otras operaciones
    print("""
    --------------------------
    Titular: $titular
    Saldo actual: $saldo
    --------------------------
    """);
    return saldo;
  }
}
