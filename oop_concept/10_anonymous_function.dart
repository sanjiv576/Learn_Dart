/*
You already saw function like main(), add(), etc. These are the named functions,
which means they have a certain name.

But not every function needs a name. If you remove the return type and the function name,
the function is called anonymous or lambda function.

 Syntax: 
 (parameterList){
    // statements
}
*/

// 1st way using FAT arrow
Function addTwoNumbers = (int a, int b) => a + b;

// 2nd way 
Function isPrime = (int number) {
  if (number <= 1) return false;

  for (int i = 2; i <= (number / 2); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
};

void main() {
  print(addTwoNumbers(3, 4));
  print(isPrime(17));
}
