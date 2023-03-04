//  Example 1: shows basic mixin implementation

// here: CanWalk code is reused and made more readable and clean

mixin CanWalk {
  void walk() => print("I can walk");
}

mixin CanFly {
  void fly() => print("I can fly");
}

// a class with mulitple mixins
class Bird with CanFly, CanWalk {}

// another class with a sinle mixin
class Human with CanWalk {}

void main() {
  var human = Human();
  human.walk();

  var bird = Bird();
  bird.fly();
  bird.walk();
}
