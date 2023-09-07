void main() {
// Ejercicio 1
  final myMeal = Meal();
  myMeal.description = "Feijoada!";
  print(myMeal.description);

// Ejercicio 2
  final myTeam = Team();
  final myCoach = Coach();
  myTeam.coach = myCoach;
  myCoach.team = myTeam;

  // Ejercicio 3
  print('Calling constructor...');
  var provider = CachedValueProvider(); // Otra forma de instanciar (con var)
  print('Getting value...');
  print('The value is ${provider.value}');
}

// Ejercicio 1
class Meal {
  late String _description; // Agregar late
  set description(String desc) {
    _description = 'Meal description: $desc';
  }

  String get description => _description;
}

// Ejercicio 2
class Team {
  late final Coach coach;
}

class Coach {
  late final Team team;
}

// Ejercicio 3
int _computeValue() {
  print('In _computeValue...');
  return 3;
}

class CachedValueProvider {
  late final int _cache = _computeValue();
  int get value => _cache;
}
