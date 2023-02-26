/*
Static in Dart as same as Java

Note:
--> this and super keywords cannot be used in static context
--> static methods can only use static variables but not non-static variables
--> static methods do need to create instance of a class to invoke it
*/

class Planet {
  static String name = "Earth"; // static variable
  String nearby = "Mars";

// static method
  static void planetName() {
    print(name); // call/use static variable
    //  print(nearby);  // not allowed
  }

  // nomral method
  void whichPlanetNear() {
    print(nearby);
    print(name); // allow to call static variable from normal method
  }
}

void main() {
  // no need to create instance of class for invoking static method
  Planet.planetName();

  print("");
  var p = Planet();
  p.whichPlanetNear();
}
