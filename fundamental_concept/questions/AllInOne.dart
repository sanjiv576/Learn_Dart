/*
Write a dart program to check if the number is odd or even.
Write a dart program to check whether a character is a vowel or consonant.
Write a dart program to check whether a number is positive, negative, or zero.
Write a dart program to print your name 100 times.
Write a dart program to calculate the sum of natural numbers.
Write a dart program to generate multiplication tables of 5.
Write a dart program to generate multiplication tables of 1-9.
Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
Write a dart program to print 1 to 100 but not 41.
*/

//  anonymous function with FAT arrow
Function checkOddOrEven =
    (int number) => number % 2 == 0 ? print("Even") : print("odd");

void findVowelOrConsonant(String alphabet) {
  if (alphabet.toLowerCase() == 'a' ||
      alphabet.toLowerCase() == 'e' ||
      alphabet.toLowerCase() == 'i' ||
      alphabet.toLowerCase() == 'o' ||
      alphabet.toLowerCase() == 'u') {
    print("$alphabet is vowel");
  } else {
    print("$alphabet is consonant");
  }
}

Function findPositiveNegativeZero = (int number) {
  if (number == 0) {
    print("$number is zero");
  } else if (number > 0) {
    print("$number is positive number");
  } else {
    print("$number is negative number");
  }
};

void names100(String name) {
  for (int i = 0; i < 100; i++) {
    print(name);
  }
}

// using formula instead of loop for O(1) time complexity
sumOfNaturalNumber(int n) => (n * (n + 1)) / 2;

multiplicationTableOf(int number) {
  for (int i = 1; i < 11; i++) {
    print("$number * $i = ${number * i}");
  }
  print("");
}

multiplicationTableUptoNine() {
  for (int i = 1; i < 10; i++) {
    multiplicationTableOf(i);
  }
}

class Calculor {
  static add(var num1, var num2) => num1 + num2;
  static subtract(var num1, var num2) => num1 - num2;
  static multiply(var num1, var num2) => num1 * num2;
  static divide(var num1, var num2) {
    var ans;
    try {
      ans = num1 ~/ num2;
    } on UnsupportedError {
      return "Divide by zero";
    } 
    return ans;
  }
}

skip41() {
  for (int i = 1; i <= 100; i++) {
    if (i == 41) continue;
    print(i);
  }
}

void main() {
  checkOddOrEven(7);
  checkOddOrEven(12);

  findVowelOrConsonant('e');
  findVowelOrConsonant('r');

  findPositiveNegativeZero(-4);
  findPositiveNegativeZero(0);
  findPositiveNegativeZero(8);

  print(sumOfNaturalNumber(5));

  multiplicationTableOf(5);

  multiplicationTableUptoNine();

  print(Calculor.add(5, 11.5));
  print(Calculor.subtract(53, 5));
  print(Calculor.multiply(5, 3.5));
  print(Calculor.divide(100, 10));
  print(Calculor.divide(33, 0));

  skip41();
}
