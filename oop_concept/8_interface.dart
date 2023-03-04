/*
NOte: 'interface' keyword is not used in Dart as Java
In Dart simply class can work as an interface.
--> 'implements' keyword is used to implement an interface.
--> each method of interface must be overridden
--> abstract class can also be used instead of concrete class to declare an interface
Note:
--> All classes implicitly define an interface. 
--> Mostly abstract class is used to declare an interface.
*/

// concrete class to declare an interface
class Remote {
  void volumeUp() {
    print("Volume up in Remote");
  }

  void volumeDown() {
    print("Volume down in Remote");
  }
}


class AnotherInterface {
  void forward() {
    print("Forwarding from remote.");
  }
}

// here, Remote class works as interface
class Television implements Remote, AnotherInterface {
  //  override method of Remote interface
  void volumeUp() {
    print("Volume up in Television.");
  }

  //  override method of Remote interface
  void volumeDown() {
    print("Volume down in Television.");
  }

  // override method of AnotherInterface
  void forward() {
    print("Forwarding from Televsion.");
  }
}

void main() {
  var tv = Television();
  // super.volumeUp();  // is not allowed in interface
  tv.volumeDown();
  tv.volumeUp();
  tv.forward();
}
