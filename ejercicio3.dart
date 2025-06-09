/*3. Cree una clase Empleado que contenga las propiedades nombre, puesto y salario. Luego cree
una lista de “empleados” y una función que calcule el salario total de todos los empleados y otra
que calcule el salario promedio*/

//Clase
class Empleado {
  final String nombre;
  String puesto;
  double salario;

  //Construcutor
  Empleado(this.nombre, this.puesto, this.salario);
}

//Funcion para calcular el salario de todos los empleados.
double calculoTotal(List<Empleado> listaEmpleados) {
  double total = 0.0;

  //Reccoremos cada empleado con 'for'
  for (Empleado empleados in listaEmpleados) {
    total = total + empleados.salario;
  }
  return total;
}

//Calculo del promedio
double calculoPromedio(List<Empleado> listaEmpleados) {
  double total = calculoTotal(listaEmpleados);

  return total / listaEmpleados.length;
}

void main() {
  List<Empleado> empleados = [
    Empleado('Ana Carias', 'Disenador', 55000.00),
    Empleado('Juan Pérez', 'Gerente', 48400.50),
    Empleado('María López', 'Conserje', 21000.75),
    Empleado('Carlos Ruiz', 'Conductor', 42000.00),
    Empleado('Laura Martínez', 'Ingenieron', 63000.25),
  ];

  double salarioTotal = calculoTotal(empleados);
  print('El salario total es: $salarioTotal');

  double salarioPromedio = calculoPromedio(empleados);
  print('El promedio de los sueldos es: $salarioPromedio');
}
