/*
Inheritance of constructors in dart --> as same as super of Java
--> while creating instance of a child class then, by default super() executes 
parent constructor at first and then only child constructor. Likewise, the same 
goes in Dart too.

2 types Inheritance of Constructor in Dart
1. Inheritance with Default and Parameterized Constructor
2. Inheritance with Named Constructor
*/

class Shape {
  double? breadth;
  double? length;
  double? height;
  double? area;

  Shape(double height) {
    this.height = height;
    print("Shape parent constructor.");
    print("This is height ${this.height}");
  }

  // Shape() {
  //   print("Parent class");
  // }

  Shape.myShapeConstructor() {
    print("Named constructor of Parent class");
  }
}

class Cylinder extends Shape {
  // by default --> : super() always there but hiddden  ---> Inheritance with Default constructor
  // Cylinder() {
  //   print("Child class");
  // }

  // Inheritance with Parameterized constructor on both Parent and Child
  Cylinder(double length, double breadth, double height) : super(height) {
    this.length = length;
    this.breadth = breadth;
    print("Cylinder child constructor.");
  }

  // Inheritance with Named constructor
  Cylinder.myClinderConstructor() : super(111.91) {
    // height is passed to the parent constructor
    print("Named constructor of Cylinder child");
  }

  // another example of Inheritance with Named constructor
  Cylinder.anotherCylinderConstructor() : super.myShapeConstructor() {
    print("Another child named constructor");
  }
}

void main() {
  Cylinder s1 = new Cylinder(12.4, 14.33, 11.2);
  //Cylinder s1 = new Cylinder();
  print("");

  var c2 = Cylinder.myClinderConstructor();
  print("");

  var c3 = Cylinder.anotherCylinderConstructor();
}
