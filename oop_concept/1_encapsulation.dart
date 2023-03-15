/*
Create a class Person with private fields name and age. Implement public getters 
and setters for both fields that validate the input before setting the value.
 Name should be a non-empty string, and age should be a positive integer.
*/

class Person {
  String? _name;
  int? _age;

  Person({String? name, int? age}) {
    this._name = name;
    try {
      if (age! <= 0) throw new AgeException();

      this._age = age;
    } on AgeException catch (e) {
      print(e.errorMessage());
    }
  }

  set age(int? age) => this._age = age;
  int? get age => this._age!;

  set name(String name) => this._name = name;
  String get name => this._name!;
}

/*
Create a class BankAccount with a private field balance. Implement public methods deposit(amount)
 and withdraw(amount) that adjust the balance accordingly. However, no one should be 
 able to access the balance field directly.
*/

class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    if (amount <= 0) throw new DepositException();

    _balance += amount;
    print("Deposited sucessfully");
  }

  void withdraw(double amount) {
    if (amount <= 0) throw new DepositException();
    _balance -= amount;
    print("Withdrawn sucessfully");
  }
}

class DepositException implements Exception {
  String errorMessage() => "Amount cannot be less or equal to 0";
}

/*
Create a class Square with a private field sideLength. 
Implement a public getter area that calculates the area of the square based on the sideLength. 
No one should be able to modify the sideLength field directly.
*/

class Square {
  double? _sideLength;
  Square(this._sideLength);

  get sideLength => this._sideLength;

  double area() => _sideLength! * _sideLength!;
}

void main() {
  Person p = Person(name: "SAnjiv", age: -10);
  print(p.name);
  // print(p.age);

  p.age = 33;
  print(p.age);
  p.name = "Shrestha";
  print(p.name);

  BankAccount ba = BankAccount();
  // ba.deposit(-100);
  ba.deposit(100);
  ba.withdraw(10);

  Square square = Square(4.5);
  print(square.sideLength);
  print(square.area());
}

class AgeException implements Exception {
  String errorMessage() {
    return "Age cannot be less than 0";
  }
}
