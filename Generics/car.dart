
part of assembly.room;

abstract class Car {
  String color;
}

class PassengerCar extends Car {
  String toString() => 'Passenger Car';
}

class Truck extends Car {
  String toString() => 'Truck';
}