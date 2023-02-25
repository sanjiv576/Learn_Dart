/*
Dart has 4 types of constructors.

1. Default constructor --> same as Java
2. Parameterized constructor --> same as Java
3. Named constructor  --> custom constructor of a programmer
4. Constant constructor
Rules for Constant Contructor
-> All properties of the class must be final.
-> It does not have any body.
-> Only class containing const constructor is initialized using the const keyword.
*/

class Fruit {
  String? name;
  String? property;
  int? price;

  Fruit(this.name, this.property); // parameterized constructor

  // Fruit(String name, String property) {  // another way of parameterized constructor like Java
  //   this.name = name;
  //   this.property = property;
  // }

  Fruit.myCustomConstructor(
      this.name, this.property, this.price); // Named constructor
      
 // like this is also allowd with default named constructor
  // Fruite.myCustomConstructor(); 
}

void main() {
  Fruit f1 = Fruit("Apple", "Red in color"); // new keyword is optional to use
  print("Name: ${f1.name}");

  Fruit f2 = new Fruit.myCustomConstructor("Papaya", "Yellow in ripe", 30);
  print("Name: ${f2.name}");

  Patient p1 = const Patient("Sonu", "Cancer", true);  // constant constructor ,optional to use const
  Patient p2 = Patient("Romeo", "TB", true);  // optional to use const

  p1.intro();
  p2.intro();
}

/*
 ------------------- Constant constructor -------------------
Rules for Constant Contructor
-> All properties of the class must be final.
-> It does not have any body.
-> Only class containing const constructor is initialized using the const keyword.
*/

class Patient {
  // All properties of the class must be final.
  final String? name;
  final String? disease;
  final bool? appoinment;

  // constant constructor must be defined by const
  const Patient(this.name, this.disease, this.appoinment);

  void intro() {
    print("$name is suffering from $disease.");
  }
}

