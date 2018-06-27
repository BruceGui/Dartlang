
import 'trailer.dart';

abstract class Car {
  
  String color;
  double speed;
  double carrying;

  Car(this.color, this.carrying);

  void move(double speed) {
    this.speed = speed;
  }

  void stop() {
    speed = 0.0;
  }
}

class PassCar extends Car with Trailer {

  int maxPass;

  PassCar(String color, double carrying, this.maxPass,
      {double extraWeight:0.0}) : super(color, carrying) {
        carry(extraWeight);
  }

}


main(List<String> args) {
  
  Car pcar = new PassCar('RED', 40.0, 100);

  print(pcar.carrying);

}