mixin class Profesion {
  String? profesion;
  String competenciasListar(List<String> competencias) {
    StringBuffer stringBuffer = StringBuffer();
    stringBuffer.write('El $profesion tiene las siguientes competencias: \n');
    for (var competencia in competencias) {
      stringBuffer.writeln('- $competencia');
    }
    return stringBuffer.toString();
  }
}
