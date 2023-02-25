// Inheritance in Dart is as same as Java and also overriding

class Bird {
  String? name;
  String? color;

  void property() {
    print("$name has $color color.");
  }
}

class Crow extends Bird {
  @override
  void property() {
    print("This is $name.");
    super.property();  // super keyword is used to call its parent properties
  }
}

class Crane extends Bird {
  void eat() {
    print("$name eats grass");
  }
}

void main() {
  Crow crow = new Crow();
  crow.name = "Crow";
  crow.color = "Black";
  print("Crow is in ${crow.color}");
  crow.property();

  Crane crane = new Crane();
  crane.name = "Crane";
  crane.color = "White";
  crane.property();
  crane.eat();
}
