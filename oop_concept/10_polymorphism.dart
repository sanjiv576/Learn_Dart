/*
Polymorphoism means a single action can be performed by different ways.
Polymorphism is the ability of an object to take on many forms. 
As humans, we have the ability to take on many forms. We can be a student, a
 teacher, a parent, a friend, and so on.
Note: 
In the real world, polymorphism is updating or modifying the feature, function, 
or implementation that already exists in the parent class.
*/

class Animal {
  void run() {
    print("Animal is running");
  }

  void eat() => print("Animal is eating");
}

class Dog extends Animal {
  @override
  void run() => print("Dog is running");
  @override
  void eat() => print("Dog is eating");
}

class Cow extends Animal {
  @override
  void run() => print("Cow is running");
  @override
  void eat() => print("Cow is eating");
}

void main() {

  var animal = Animal();
  animal.eat();
  animal.run();

  var cow = Cow();
  cow.eat();
  cow.run();

  var dog = Dog();
  dog.eat();
  dog.run();
}
