
library assembly.room;

part 'opergen.dart';
part 'assembly.dart';
part 'car.dart';

operation(car) {
  print('Operate ${car}');
}

main(List<String> args) {

  Operation<PassengerCar> paint = new Operation<PassengerCar>('paint');
  Operation<Truck> paintT = new Operation<Truck>('paint');
  AssemblyLine<PassengerCar> passenagerCarAss = new AssemblyLine<PassengerCar>();
  passenagerCarAss.add(new PassengerCar());
  //passenagerCarAss.add(new Truck());

  passenagerCarAss.make(operation);
  passenagerCarAss.make(paint);
  passenagerCarAss.make(paintT);   // 为什么这里的 Function Generics 不管用

}