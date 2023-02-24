class Bicycle {
  int cadence;
  // _ used for private memebr
  int _speed = 20;
  int gear;
  // this get method
  int get speed => _speed;
  // this is constructor 
  Bicycle(this.cadence, this.gear);

// equivalent as above constructor
  // Bicyclw (int cadence, int gear)
  //   : this.cadence = cadence;
  //     this.gear = gear;
  
  // override method
  @override
  String toString() => 'Bicycle: $_speed mph';
  
  // non-return type method
  void applyBrake(int decrement){
    _speed -= decrement;
    print("Stopping. Speed is $_speed");
  }
  // non-return type method
  void speedUp(int increment) => _speed += increment;
}
// run method
void main() {
  // create instance of Bicycle, here 'new' keyword is optional
  var bike = Bicycle(2, 1);
  print(bike);
  print(bike.speed);
  bike.applyBrake(12);
}