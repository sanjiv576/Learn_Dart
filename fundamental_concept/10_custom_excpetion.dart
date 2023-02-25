/*
For custom exception handling 
1. you need to create a class , child class of Exception interface.
2. Create a method that throws error
*/

void main() {
  // deposit(1200);
  // deposit(-400);

  try {
    deposit(1200);
    deposit(-12);
  } on DepositException catch (e) {
    //print("Failed to deposit.");
    print(e.errorMessage());
  } finally {
    print("Completed transaction.");
  }
}

// custom error handling class
class DepositException implements Exception {
  // error handling method
  String errorMessage() => "Amount cannot be less than 0";
}

// method for deposting money
void deposit(var amount) {
  if (amount <= 0) {
    throw new DepositException(); // call the error class
  } else {
    print("$amount is deposited successfully.");
  }
}


