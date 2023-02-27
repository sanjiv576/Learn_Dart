// A closure is a special function that has access to the parent scope,
// even after the scope has closed.

void greeting() {
  String greet = "morning";

// closure function
  Function evening = () {
    greet = "evening"; // modified parent scope variable
  };

  evening();
  print("Good $greet !");
}

void main() {
  greeting();

  print("");
  // Eg using higher-order function
  // Definition 2:
  // A closure is a function object that has access to variables in its lexical scope,
  // even when the function is used outside of its original scope.

  Function talk = () {
    String msg = "Hi";

    Function say = () {
      msg = "Hello";
      print(msg);
    };

    return say;
  };

  Function speak = talk();

  speak(); // talk()       // say()        //  print(msg)      // "Hello"
}
