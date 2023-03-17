/*
Create an abstract class Shape with an abstract method area().
 Implement two classes Circle and Rectangle that inherit from Shape. 
 Implement the area() method in each of these classes to return the area of the
  corresponding shape.
*/

abstract class Shape {
  // abstract method
  double area();
}

class Rectangle extends Shape {
  double? length;
  double? breadth;
  Rectangle({required this.length, required this.breadth});

  @override
  double area() => length! * breadth!;
}

class Circle extends Shape {
  double? radius;
  Circle({required this.radius});

  @override
  double area() => radius! * radius! * 3.1416;
}

/*
Create an abstract class Animal with an abstract method makeSound().
 Implement two classes Cat and Dog that inherit from Animal. Implement the makeSound()
  method in each of these classes to return the sound made by the corresponding animal.

*/

abstract class Animal {
  String makeSound();
}

class Cat extends Animal {
  @override
  String makeSound() {
    return 'Meow';
  }
}

class Dog extends Animal {
  @override
  String makeSound() => 'Bark';
}

/*
Create an abstract class Vehicle with an abstract method drive(). 
Implement two classes Car and Bike that inherit from Vehicle.
 Implement the drive() method in each of these classes to print the 
 message "Driving a car" or "Riding a bike" respectively.

*/

abstract class Vehicle {
  void drive();
}

class Bike extends Vehicle {
  @override
  void drive() => print('Riding a bike');
}

class Car extends Vehicle {
  @override
  void drive() => print('Driving a car');
}

/*
Create an abstract class Employee with an abstract method calculateSalary(). 
Implement two classes Manager and Developer that inherit from Employee. 
Implement the calculateSalary() method in each of these classes to calculate 
the salary of the corresponding employee based on their role and experience.

*/

abstract class Employee {
  double salary = 10;

  double calculateSalary();
}

class Manager extends Employee {
  // double? salary;
  double? amount;
  Manager({this.amount}) : super();
  @override
  double calculateSalary() {
    salary += amount!;
    return salary;
  }
}

class Developer extends Employee {
  // double? salary;
  double? amount;
  Developer({this.amount}) : super();
  @override
  double calculateSalary() {
    salary += amount!;
    return salary;
  }
}

// Is this correct according to question no. 4 ?

void main() {
  Shape rect = Rectangle(length: 12.4, breadth: 20.3);
  print(rect.area());

  Shape circle = Circle(radius: 3.4);
  print(circle.area());

  Animal dog = Dog();
  Animal cat = Cat();

  print(dog.makeSound());
  print(cat.makeSound());

  Employee developer = Developer(amount: 500);
  developer.calculateSalary();
  print(developer.salary);
}
