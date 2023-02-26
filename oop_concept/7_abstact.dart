// Abstraction in Dart is as same as Java
/* 
SOME KEY NOTES:
--> abstract is declared before class but do not declare in method
--> abstract methods do not have body implementation
--> abstract class cannot be instantiated so, instantiate its child class
--> each abstract method should be overridden by its child class
*/

// abstract class
abstract class Shape {
  double? length;

  // abstract keyword is not used like as Java in Dart;
  void draw(); // abstract method --> implmentation is hidden
}

class Rectangle extends Shape {
  // implementation of abstract draw method
  void draw() {
    print("Drawing rectangle.");
  }
}

class Triangle extends Shape {
  // implementation of abstract draw method
  void draw() {
    print("Drawing triangle.");
  }
}

void main() {
  Shape rectangle = Rectangle();
  rectangle.draw();

  print("");

  Shape tri = Triangle();
  tri.draw();
}
