/*2. Crea un programa que devuelva una lista con todos los elementos únicos
de otra lista.*/

List<String> obtElementos(List<String> listaElementos) {
  List<String> elementosUnicos = [];

  for (String elementosOriginales in listaElementos) {
    bool esUnico = false;

    for (String elementosExistentes in elementosUnicos) {
      if (elementosExistentes == elementosOriginales) {
        esUnico = true;
        break;
      }
    }
    if (!esUnico) {
      elementosUnicos.add(elementosOriginales);
    }
  }
  return elementosUnicos;
}

void main() {
  List<String> misFrutas = [
    'manzana',
    'plátano',
    'tomate',
    'pera',
    'manzana',
    'uva',
    'naranja',
    'plátano',
    'arandanos',
    'tomate',
    'plátano',
    'naranja',
    'kiwi',
    'plátano',
    'Pera', // 'Pera' y 'pera' son diferentes
    'naranja',
    'plátano',
    'tomate',
    'arandanos',
  ];

  print('Los elementos originales son: $misFrutas \n');
  // Llamada a la función para obtener los elementos únicos
  List<String> elementosUnicos = obtElementos(misFrutas);
  print('Los elementos unicos son: $elementosUnicos');
}
