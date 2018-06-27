
library cars;

part 'car.dart';

main(List<String> args) {
  
  Car car = new Car();
  car.accelerate(90);

  print('Car speed is ${car.speed}');

  CarProxy proxy = new CarProxy(car);

  proxy.accelerate(90);
  print('Car speed is ${proxy.speed}');

}