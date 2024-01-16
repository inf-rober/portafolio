class SetterGetter {
  String? _propiedad1;
  // ignore: prefer_final_fields
  int? _propiedad2;
  // ignore: prefer_final_fields
  bool? _propiedad3;
  double? _propiedad4;

  SetterGetter(
      [this._propiedad1, this._propiedad2, this._propiedad3, this._propiedad4]);

  String? get getPropiedad1 => _propiedad1;
  set setPropiedad1(nuevoValor) => _propiedad1 = nuevoValor;
  int? get getPropiedad2 => _propiedad2;
  bool? get getPropiedad3 => _propiedad3;
  double? get getPropiedad4 => _propiedad4;

  void ifYouHaveSomethingDefineThis() {
    if (_propiedad4 != null) {
      _propiedad4 = 91.99;
    } else {
      _propiedad4 = 0.0;
    }
  }
}
