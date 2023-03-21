
// WAP to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.

class Laptop {
  int? id;
  String? name;
  String? ram;

  Laptop({this.id, this.name, this.ram});

  void printDetails() => print("ID : $id \n Name: $name \n $ram");
}

// WAP to create a class House with properties [id, name, prize]. Create a constructor of it and create 3 objects
//  of it. Add them to the list and print all details.

class House {
  int? id;
  String? name;
  String? price;
  House({this.id, this.name, this.price});
}
// WAP to create an enum class for gender [male, female, others] and print all values.

enum Gender {
  male("Male"),
  female("Female"),
  others("Others");

  final String genderType;
  const Gender(this.genderType);
}

// Write a dart program to create a class Animal with properties [id, name, color].
// Create another class called Cat and extends it from Animal. Add new properties sound in String.
// Create an object of a Cat and print all details.

class Animal {
  int? id;
  String? name;
  String? color;
  String? category;

  Animal({this.id, this.name, this.color, this.category});
}

class Cat extends Animal {
  String sound() => 'Meow';
  Cat({id, name, color, category = 'Cat'})
      : super(id: id, name: name, color: color, category: category);

  void details() {
    print('id: $id \n name: $name \n color: $color');
  }
}

// WAP to create a class Camera with private properties [id, brand, color, prize]. Create a getter and setter
// to get and set values. Also, create 3 objects of it and print all details.

class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _price;

  Camera(this._id, this._brand, this._color, this._price);

  // getter methods

  int get id => this._id!;
  String get brand => this._brand!;
  String get color => this._color!;
  double get price => this._price!;

  // setter methods

  set id(int id) => this._id = id;
  set brand(String brand) => this._brand = brand;
  set color(String color) => this._color = color;
  set price(double price) => this._price = price;
}

// Create an interface called Bottle and add a method to it called open(). Create a class called CokeBottle 
// and implement the Bottle and print the message “Coke bottle is opened”. Add a factory constructor to Bottle 
// and return the object of CokeBottle. Instantiate CokeBottle using the factory constructor and call the open() 
// on the object.



void main() {
  Gender a = Gender.male;
  print(a.genderType);

  Cat cat = Cat(id: 12, name: 'Toko', color: 'Browny');
  print(cat.color);
  print(cat.sound());
  cat.details();
  print(cat.category);

  Camera camera = Camera(101, 'Sony', 'Pinkish', 450.0);
  // invoke getter methods
  print(camera.color);
  print(camera.price);

// set new values
  camera.color = 'Purple';
  camera.price = 460.0;

  // invoke getter methods
  print(camera.color);
  print(camera.price);

}
