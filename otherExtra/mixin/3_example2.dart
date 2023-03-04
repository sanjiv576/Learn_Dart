// Exampl 2 : shows use of 'on' keyword

// Note: on keyword is used to allow to use a mixin only for a specific class
abstract class Animal {
  String? breedName;
  double? speed;
  Animal(this.breedName, this.speed);
}

// used CanRun mixin only for Animal class
mixin CanRun on Animal {
  void run() => print("$breedName is running at $speed m/s speed.");
}

// also declare the mixing if the class or parent class is associated with Mixin
class Dog extends Animal with CanRun {
  // pass parameters in the parent class i.e name and speed
  Dog(String breedName, double speed) : super(breedName, speed);
}

void main() {
  var dog = Dog("Bulldog", 4);
  dog.run();
}
