/*
Exception --> unexpected event that occurs during the execution of a program that dispruts the normal flow of the program

try clause --> suspicious code that throws error
on clause --> use this when you know what kind of error is thrown
catch clause--> use this when you do not know what kind or error is thrown
finally clause --> always executes weheter exception occurs or not

Note: 
1. catch clause with Excepiton Object and StackTree Object
    stack tree --> to know the events occured before Exception was thrown

2. TRY clause always comes with ON or CATCH clauses
 */

// Case -1 : when you know what kind of error will be thrown
// use TRY and ON clauses
void case1() {
  try {
    int result = 17 ~/ 0; // ~ is used to wihtout decimal point
    print("The result is $result");
  } on UnsupportedError {
    // IntegerDivivisonByZero is depreciated so used here UnsupportedError
    print("Divide by zero is infinity so could not be calculated.");
  }
}

// Case -2 : when you do not know what kind of error will be thrown
// use TRY and CATCH clauses
void case2() {
  try {
    int result = 17 ~/ 0; // ~ is used to wihtout decimal point
    print("The result is $result");
  } catch (e) {
    print("The exception is : $e");
  }
}

void withStackTree() {
  try {
    int result = 17 ~/ 0; // ~ is used to wihtout decimal point
    print("The result is $result");
  } catch (e, s) {
    print("The exception is : $e");
    print("\n What happened before exception occurs: $s");
  }
}

// Case 3 : when exception occurs --> to show use of FINALLY clause

void case3() {
  try {
    int result = 17 ~/ 0; // ~ is used to wihtout decimal point
    print("The result is $result");
  } catch (e) {
    print("The exception is : $e");
  } finally {
    print("This FINALLY clause executes whether excpetion occurs or not.");
  }
}

// Case 4 : when exception does not occur --> to show use of FINALLY clause

void case4() {
  try {
    int result = 17 ~/ 3; // ~ is used to wihtout decimal point
    print("The result is $result");
  } catch (e) {
    print("The exception is : $e");
  } finally {
    print("This FINALLY clause executes whether excpetion occurs or not.");
  }
}

// case 5

void case5(){
  try {
    agetInsert(-20);
  } catch (e) {
    print("Age cannot be less than 0.");
  }
  finally{
    agetInsert(40);
  }
}

void agetInsert(int age) {
  if (age < 0) {
    throw new FormatException();
  } else {
    print("$age is inserted as your age.");
  }
}

void main() {
  print("\n Case 1 \n ");
  case1();

  print("\n Case 2 \n ");
  case2();
  withStackTree();

  print("\n Case 3 \n ");
  case3();

  print("\n Case 4 \n ");
  case4();

  print("\n Case 5 -- use of THROW keyword \n ");
  case5();
}
