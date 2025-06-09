/*4. Cree una clase Libro con las propiedades titulo, autor, y anioPublicacion. Crea una clase
     Biblioteca que contenga una lista de libros y funciones para:
     a. Agregar libros.
     b. Eliminar libros.
     c. Buscar libros por autor.
     d. Listar todos los libros ordenados por año de publicación.
*/
//Biblioteca

void main() {
  // Instancia de Biblioteca
  Biblioteca miBiblioteca = Biblioteca();

  // Agregando libros
  miBiblioteca.agregarLibro(
    Libro(
      titulo: "Conde de Montecristo",
      autor: "Alexandre Dumas",
      anioPublicacion: 1844,
    ),
  );
  miBiblioteca.agregarLibro(
    Libro(titulo: "metamorfosis", autor: "Franz Kafka", anioPublicacion: 1915),
  );
  miBiblioteca.agregarLibro(
    Libro(titulo: "Lista Engel", autor: "Eliot Engel", anioPublicacion: 2020),
  );

  // Libros ordenados por año, al inicio para que se muestren todos los libros disponibles
  print("\nLibros ordenados por año de publicación:");
  for (var libro in miBiblioteca.librosPorAnio()) {
    print("${libro.titulo} - ${libro.autor} (${libro.anioPublicacion})");
  }
  print("\n");

  // Buscar libros por autor
  print(miBiblioteca.buscarPorAutor("Alexandre Dumas"));
  print(miBiblioteca.buscarPorAutor("franz kafka"));
  print("\n");

  // Eliminar un libro por título
  String mensaje = miBiblioteca.eliminarLibro("lista angel");
  print("\n$mensaje");
  String mensaje2 = miBiblioteca.eliminarLibro("lista engel");
  print("$mensaje2");
  print("\n");
}

// Definición de las clases Libro y Biblioteca
class Libro {
  String titulo;
  String autor;
  int anioPublicacion;
  // Constructor clase Libro
  Libro({
    required this.titulo,
    required this.autor,
    required this.anioPublicacion,
  });
}

class Biblioteca {
  // lista libros
  List<Libro> _libros = [];

  // a. Agregar libro a la biblioteca
  void agregarLibro(Libro libro) {
    _libros.add(libro);
  }

  // b. Eliminar libros por título
  String eliminarLibro(String titulo) {
    int cantidadAntes = _libros.length;
    _libros.removeWhere(
      (libro) => libro.titulo.toLowerCase() == titulo.toLowerCase(),
    );
    int eliminados = cantidadAntes - _libros.length;
    return (eliminados > 0)
        ? "Se eliminaron $eliminados libro(s) con el título '$titulo'."
        : "No se encontró ningún libro con el título '$titulo'.";
  }

  // c. Método para buscar libros por autor
  String buscarPorAutor(String autor) {
    List<Libro> encontrados = _libros
        .where((libro) => libro.autor.toLowerCase() == autor.toLowerCase())
        .toList();
    if (encontrados.isEmpty) {
      return "No se encontraron libros de $autor.";
    }

    String resultado = "Libros de $autor:\n";
    for (var libro in encontrados) {
      resultado += "- ${libro.titulo} (${libro.anioPublicacion})\n";
    }
    return resultado.trim();
  }

  // d. Listar todos los libros ordenados por año de publicación
  List<Libro> librosPorAnio() {
    List<Libro> librosOrdenados = List.from(_libros);
    librosOrdenados.sort(
      (a, b) => a.anioPublicacion.compareTo(b.anioPublicacion),
    );
    return librosOrdenados;
  }
}
