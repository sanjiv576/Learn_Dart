// Objectives
// 1. Higher-Order Function:
// How to pass function as parameter?
// How to return a function from another function?

/*
Higher-Order function is a function that accpets a function as a parameter, 
or returns a function or can do both.

*/

// Example 1: accepts a function as a parameter
void evenNumbers(String message, Function myFunction, int number) {
  print(message);
  myFunction(number);
}


void main() {
  Function printEvenNumbersUpto = (int num) {
    for (int i = 2; i <= num; i += 2) {
      print("$i");
    }
  };
// Eg 1: passing a function to higher-order function 
  evenNumbers("Even Numbers ", printEvenNumbersUpto, 10);

  print("Example 2: returns a function");
  // Eg 2: receiving a function from Higher-Order function
  var myFunc = anotherFunction();
  print(myFunc);

}

// Example 2: returns a function

Function anotherFunction = (){
  void addTwoNumbers(a,b) => a+b;
  return addTwoNumbers(12,15);
};