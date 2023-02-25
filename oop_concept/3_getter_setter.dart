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

  s1.contact = 981243;  // set the new contact--> calling setter method
  print("New contact : ${s1.contact}");  // calling getter method
}
