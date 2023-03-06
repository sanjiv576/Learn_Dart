/*
WAP in Dart to print your own name using function.
WAP in Dart to print even numbers between intervals using function
WAP in Dart that generates random password.
WAP in Dart that find the area of a circle using function.
WAP in a dart that implements the Pythagorean theorem using function.
WAP in Dart to reverse a String using function.
WAP in Dart to calculate power of a certain number. For e.g 5^3=125
*/

import 'dart:math';

Function printName = ({required String name}) => print(name);

void printEvenBetween({int start = 0, required int end}) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  print("");
}

String generateRandomPassword([int size = 8]) {
  Random random = Random();
  String password = " ";
  for (int i = 0; i < size; i++) {
    // get random ASCI code from 33 to 126
    int randomAsciCode = random.nextInt(94) +
        33; // here, 94 is passed as an argument instead of 126 because it generates 0 to 93 and then adds 33.
    // print("$randomAsciCode = ${String.fromCharCode(randomAsciCode)}");
    // convert ASCI code to a character and concatenate it
    password += String.fromCharCode(randomAsciCode);
  }
  return password;
}

double areaCircle(double radius) => radius * radius * 3.14;

NthPowerOf(var num, int power) => pow(num, power);

String reverse(String word) {
  String reverseWord = "";
  for (int i = word.length - 1; i >= 0; i--) {
    reverseWord += word[i];
  }
  return reverseWord;
}

Function pythograusTheorem =
    (var base, var perpendicular) => sqrt(pow(base, 2) + pow(perpendicular, 2));

void main() {
  print("Your password is : ${generateRandomPassword(10)}");
  print(reverse("HellO"));
  print(NthPowerOf(3, 3));
  print(pythograusTheorem(5, 5));
}
