// Class and Object same as Java but while creating instance of object new keyword is not use

class Student {
  int? age; // instance or field variable, default value is null
  String? name; // instance or field variable, default value is null

  void study() {
    print("${this.name} is studying.");
  }
}

void main() {
  var student1 = Student();
  student1.age = 23;
  student1.name = "Salman";
  student1.study();

  Student student = Student();
  student.age = 19;
  student.name = "Aamir";
  student.study();

  print("${student1.name} and ${student.name} are studing together.");
}
