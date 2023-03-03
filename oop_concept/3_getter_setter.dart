/*
Getter and Setter methods in Dart
1. Default Getter and Setter 
2. Custom Getter and Setter
*/

class Student {
  String? name; // Instance variable with Default Getter and Setter

  int _contact = 9800; // private varible using _ to make private

  // Shorthand getter method
  int get contact => _contact;

  // setter method
  void set contact(int contact) => this._contact = contact;
}

void main() {
  Student s1 = new Student();
  print("Default contact is : ${s1.contact}");

  s1.contact = 981243; // set the new contact--> calling setter method
  print("New contact : ${s1.contact}"); // calling getter method

  Book book1 = Book("Comic", 123.45);
  print(book1.name);
  book1.name = "Science";
  print("New Book name: ${book1.name}");
}

class Book {
  // private fields
  String? _name;
  double? _price;

// constructor
  Book(this._name, this._price);

/*
In the getter methods name and price, ! is added to the end of the property name
 to tell the compiler that we know the value is not null and we want to access it directly. 
 This is called a non-null assertion operator. If the value is null, it will throw a runtime exception. 
*/

  // getter method to access name property
  String get name => this._name!;

  // getter methodto access price
  double get price => this._price!;

  // setter methods
  set name(String name) => this._name = name;
  set price(double price) => this._price = price;
}
