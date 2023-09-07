class ExcepcionPersona implements FormatException {
  int _source; // Recibe código postal
  ExcepcionPersona(this._source);

  @override
  String get message => 'El código postal debe tener 5 caracteres';

  @override
  int? get offset => 5 - _source;

  @override
  get source => _source;
}
