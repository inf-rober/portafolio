class GalletaJengibre {
  String nombre;
  int edad;
  String? tamano; // Grande, mediano, pequeño
  // Constructor tradicional minimizado
  GalletaJengibre(this.nombre, [this.edad = 0]);
  // Constructor por nombre
  GalletaJengibre.paraDefinirTamano(
      {this.nombre = 'Galleta anónima',
      this.tamano = 'Tamaño no definido',
      this.edad = 0});

  @override
  String toString() {
    return 'Soy un personaje de la película Shrek';
  }

  void nacimiento() {
    print('Jengi: ¿Estoy vivo?');
  }

  void dormir() {
    print('Zzzz...');
  }
}
