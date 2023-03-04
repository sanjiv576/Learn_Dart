/*
Enum is a special type that represents a number of fixed constant values.
# Characteristics
--> must have at least one constant value
--> must declare outside the class
--> used to store a large number of constant values

# Advantages
--> makes the code more reusable, readable and maintainable
--> used to define a set of specific constants
 */

// normal enum example
enum months {
  January,
  Feburary,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December
}

void main() {
  print(months.November);

  // print all values
  for (months i in months.values) {
    print(i);
  }

  print("Example - Enhanced enum");
  MonthType month = MonthType.feb;
  print(month.text);
}

// Enhanced enum --> contains enum with members
enum MonthType {
  jan("January"),
  feb("February"),
  mar("March"),
  ap("April");

  final String text;
  const MonthType(this.text);
}
