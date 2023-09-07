class Sujeto {
  String _codigo;
  int _edad;

  // ignore: unnecessary_getters_setters
  String get codigo => _codigo;
  set codigo(String value) => _codigo = value;
  get edad => _edad;
  set edad(value) => _edad = value;

  int? puntuacionDirecta;
  int? puntuacionDirectaSpan;
  int? puntuacionInverso;
  int? puntuacionInversoSpan;
  int? puntuacionCreciente;
  int? puntuacionCrecienteSpan;
  int? puntuacionCrecienteIndices;

  Sujeto(this._codigo, this._edad);
}
