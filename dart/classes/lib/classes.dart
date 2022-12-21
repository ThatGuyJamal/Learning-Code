class SolarSystem {
  String name = 'Dart Solar System';
  List<Planet> planets = [];

  SolarSystem(this.name) {
    // print('Loading Solar System: $name');
  }
}

class Planet {
  @override
  // ignore: override_on_non_overriding_member
  String name;

  Planet(this.name) {
    print('Loading Planet: $name');
  }
}

void main() {
  var solarSystem = SolarSystem('Dart Solar System');

  solarSystem.planets.add(Planet('Mercury'));
  solarSystem.planets.add(Planet('Venus'));
  solarSystem.planets.add(Planet('Earth'));
  solarSystem.planets.add(Planet('Mars'));
  solarSystem.planets.add(Planet('Jupiter'));
  solarSystem.planets.add(Planet('Saturn'));
  solarSystem.planets.add(Planet('Uranus'));
  solarSystem.planets.add(Planet('Neptune'));
  solarSystem.planets.add(Planet('Pluto'));

  print('Solar System: ${solarSystem.name}');
}
