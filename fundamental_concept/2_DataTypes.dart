// Built-in Data types in Dart
// 1. Numbers -> int, double
// 2. Strings
// 3. Boolean
// 4. Lists (also known as array)
// 5. Map
// 6. Runes
// 7. Symbol

// Note: All data types in Dart are objects, therefore, their initial value is null by default

void main() {
  // Numbers
  int age = 20;
  double salary = 2434.3;
  var id =
      2342; // automatically, 'var' finds its data type by looking value by the compiler
  print(age);
  print(salary);
  print(id);

  // String
  String name; // default value should be null
  String surname = "Shrestha";
  var address = "KTM";
  
 // print(name);
  print('Mr.' + surname + " is living in " + address);
}
