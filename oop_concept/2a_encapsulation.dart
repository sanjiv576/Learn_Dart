/*
# Encapsulation In Dart
In Dart, Encapsulation means hiding data within a library, preventing it from outside factors. 
It helps you control your program and prevent it from becoming too complicated.

# What Is Library In Dart?
By default, every .dart file is a library. A library is a collection of functions and classes. 
A library can be imported into another library using the import keyword.

# How To Achieve Encapsulation In Dart?
Encapsulation can be achieved by:
--> Declaring the class properties as private by using underscore(_).
--> Providing public getter and setter methods to access and update the value of private property.

Note: 
Dart doesn’t support keywords like public, private, and protected like in Java.
Dart uses _ (underscore) to make a property or method private. 
The encapsulation happens at library level, not at class level. 

#Why Encapsulation Is Important?
1. Data Hiding:
 Encapsulation hides the data from the outside world. 
 It prevents the data from being accessed by the code outside the class. This is known as data hiding.

2. Testability: 
Encapsulation allows you to test the class in isolation.
 It will enable you to test the class without testing the code outside the class.

3. Flexibility: 
Encapsulation allows you to change the implementation of the class without affecting the code outside the class.

4. Security:
 Encapsulation allows you to restrict access to the class members.
  It will enable you to limit access to the class members from the code outside the library.
*/

class Employee {
  // private fields
  String? _name;
  double? _salary;

// constructor
  Employee(this._name, this._salary);

  // getter methods to access the private fields
  String get name => this._name!;
  double get salary => this._salary!;

  // setter methods to set the value for the private fields
  set name(String name) => this._name = name;
  set salary(double salary) => this._salary = salary;
}

void main() {
  var e1 = Employee("Shyam", 6123.53);
  print(e1.name); // calling a getter method of name
  e1.name = "Shanw"; // calling a setter mthod of name to set new value
  print("New employee name: ${e1.name}");
}
