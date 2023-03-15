/*
Question no. 1
Create an enum named Direction with four possible values: up, down, left, and right.
 Write a function named printDirection that takes a Direction value and prints a message
  indicating which direction was passed in.

Question no. 2
Define an enum named Color with three possible values: red, green, and blue. 
Write a function named getColorCode that takes a Color value and 
returns a string representing the hexadecimal color code for that color.
 For example, the getColorCode(Color.red) should return "#FF0000".
*/

//  Answer no. 1

enum Direction {
  up('Up'),
  down('Down'),
  left('Left'),
  right('Right');

  final String direction;
  const Direction(this.direction);
}

//  Answer no. 2
enum Color {
  red,
  green,
  blue;
}

// Extensions are used to extend the functionality of a class or interface with new methods and properties,
// even if the class or interface is part of a third-party library that cannot be modified.
extension ColorExtension on Color {
  String getColorCode() {
    // this keyword to refer to the current color object inside the getColorCode method.

    switch (this) {
      case Color.red:
        return "#FF0000";
      case Color.green:
        return "#00FF00";
      case Color.blue:
        return "#0000FF";
      default:
        return "";
    }
  }
}

/*
Question no. 3
Define an enum named Weekday with seven possible values: monday, tuesday, wednesday, thursday, friday, saturday,
 and sunday. Write a function named isWeekend that takes a Weekday value and 
 returns true if the day is a weekend day (i.e., Saturday or Sunday) and false otherwise.
*/

enum Weekday { sunday, monday, tuesday, wednesday, thursday, friday, saturday }

extension WeekdayExtension on Weekday {
  bool isWeekend() {
    if (this == Weekday.sunday || this == Weekday.sunday) {
      return true;
    }
    return false;
  }
}

void main() {
  Direction d = Direction.down;
  print(d.direction);

  Color c = Color.green;
  print(c.getColorCode());

  Weekday w = Weekday.sunday;
  print(w.isWeekend());

  w = Weekday.friday;
  print(w.isWeekend());
}
