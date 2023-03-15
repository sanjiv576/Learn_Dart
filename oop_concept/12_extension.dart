/*
In Dart, an extension is a feature that allows adding functionality to an existing class or interface 
without modifying its source code. Extensions are used to extend the functionality of a class or interface
 with new methods and properties, even if the class or interface is part of a third-party library 
 that cannot be modified.

Extensions are declared using the extension keyword followed by the name of the extension, and the type
 being extended. The extension methods can then be accessed on objects of the extended type as if they were 
 part of the original class.

Extensions are often used to add new functionality to a class or interface that is not available
 in its original implementation. For example, you can add utility methods to built-in types
  like String or List, or add new methods to classes from third-party libraries.

Extensions can also be used to provide alternative implementations of existing methods or 
to provide methods with different behavior based on the object's state or type. This can be useful
 when you want to provide different implementations of a method for different situations or
  to specialize a method's behavior for a specific use case.

In summary, extensions are used to add new functionality to existing classes or interfaces without
 modifying their source code, and they can be used to provide alternative implementations
  or specialized behavior for existing methods.
*/

// Note: int is already built-in class of Dart without having isEven and isOd functions.
extension IntExtension on int {
  bool isEven() => this % 2 == 0;

  bool isOdd() => this % 2 == 1;
}

void main() {
  int number = 10;
  print(number.isEven); // Output: true
  print(number.isOdd); // Output: false
}
