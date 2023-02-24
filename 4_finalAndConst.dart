void main(){

  // final keyword --> only be set once and it is initialized when accessed
  final myLastName = "Shrestha";  // here, String data type is optional because it is inferred by final keyword automatically
  final String myFristName = "Sanjiv";  
  String country ="Nepal";
  print("My country name is $country");
  print("My name is " + myFristName + " " + myLastName);

  // const keyword 

  const pi = 3.214;  // optional to use double data type
  const double gravity = 9.8;

  print("PI value is $pi and graivty on Earth is $gravity m/s2");

 var  home = Home();
  print("In home class, " + home.people + " stays.");


}

// Note: instance variable can be final but cannot be const, --> so make static const

class Home{
  final _people = "family";
  // getter method to access people variable from outside of the class
  String get people => _people;
// Note: instance variable can be final but cannot be const, --> so make static const
static const vehicle = "car";



}