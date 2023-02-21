void main() {
  // Literals ---> are the values i.e 23, "hi", 34.23

// different ways for String literals either '' or ""
  String firstName = 'Sanjiv';
  String schoolName = 'It\'s KEBS.';

// for long string not need + to join, it is optional
  String paragraph = "This is the first sentence. This is the second sentence."
      "this is third sentence"
      "this is foruth sentence";

  String lastName = "Shrestha";
  int age = 21;
// String interpolation --> connect

  String intro = "Hello, I'm $firstName $lastName. I'm $age years old.";
  print(intro);
  print(
      "Length of first name is ${firstName.length}"); // {} is used to indicated for the length of name variable

  String address = "KTM";

// second way of string interploation
  String where = firstName +
      " lives in " +
      address; // note: bad practice by concatenating with + sign
  print(where);

  int length = 12;
  double breadth = 12.3;
  print(
      "Area of a rectangle with length $length and breadth $breadth is ${length * breadth}");
}
