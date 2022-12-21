class SolarSystem {
  String name;
  List<Planet> planets;

  SolarSystem(this.name, this.planets) {
    // print('Loading Solar System: $name');
  }
}

class Planet {
  @override
  String name;

  Planet(this.name) {
    print('Loading Planet: $name');
  }
}

void main() {
  var solarSystem = SolarSystem('Dart Solar System', [
    Planet('Mercury'),
    Planet('Venus'),
    Planet('Earth'),
    Planet('Mars'),
    Planet('Jupiter'),
    Planet('Saturn'),
    Planet('Uranus'),
    Planet('Neptune'),
    Planet('Pluto'),
  ]);
  print('Solar System: ${solarSystem.name}');

  for (var planet in solarSystem.planets) {
    print('Planet: ${planet.name}');
  }
}
