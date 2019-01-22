
part of cars;

class Car {

  int _speed = 0;

  int get speed => _speed;

  accelerate(acc) {
    _speed += acc;
  }

}