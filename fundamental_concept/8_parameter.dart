/*
Types of Parameter in Dart
1. Required parameter ---> just like JAVA
2. Optional parameter ---> Postional, Named and Default types


2a. Optional Positional Paramter 
--> skips specific parameter within [...]
--> default values are null of optional positional parameters
--> data types of positional parameter are not defined

2b. Optional Named Parameter
--> prevents errors if there are large no. of parameters
--> sequence of parameters does not mater
--> uses {...} in method
--> name of parameters and : used while calling the method

2c. Optinal default paramter
--> assign default values to the paratmer
*/

void main() {
  print("1. Required paramter");

  // 1. Required paramter
  printFruits("Apple", "Cherry", "Watermeleon");
  print("");

  print("2. Optional Positional parameter");
  // 2. Optional Positional paramter  --> uses to skip parameter within []
  printCountires("Nepal", "UK");

  print("");
  print("3. Optional Named parameter");
  print(findVolume(3, breadth: 10, height: 12));
  print(findVolume(2,
      height: 10, breadth: 3)); // sequence of arguments does not matter

  print("");
  print("4. Optional Default parameter");
  print(findArea(2));
  print(findArea(2, breadth:30)); // overrides the default breadth value
}

// 1. Required parameter
//  --> no mandatory to define data type e.g fruit2 and fruit1

void printFruits(String fruit1, fruit2, String fruit3) {
  print("1st fruit name is $fruit1");
  print("2nd fruit name is $fruit2");
  print("3rd fruit name is $fruit3");
}

// 2. Optional Positional Parameter, by default, optional parameters are null
//  --> do not define data type inside [..]
void printCountires(String name1, [name2, name3]) {
  // data type is not given for optional positional parameters
  print("1st country name is $name1");
  print("2nd country name is $name2");
  print("3rd country name is $name3");
}

// 3. Optional Named Parameter
//--> prevents errors if there are large no. of parameters
// --> sequence of parameters does not mater
// --> uses {...} in method
// name of parameters and : used while calling the method

findVolume(int length, {breadth, height}) => length * breadth * height;

// 2c. Optinal default paramter
// --> assign default values to the paratmeter

findArea(int length, {int breadth = 10}) => length * breadth;
