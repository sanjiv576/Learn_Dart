mixin CanFly {
  void fly() => print("I can fly.");
}

mixin CanWalk {
  void walk() => print("I can walk.");
}

mixin CanRun on Human {
  @override
  void run() {
    print("Human can run");
  }
}

abstract class Human {
  void run();
}

class Person extends Human with CanRun {
  
}

class Bird with CanFly, CanWalk {}

void main() {
  var b = Person();
  b.run();
}
