
part of cars;

class Car {

  int _speed = 0;

  int get speed => _speed;

  accelerate(acc) {
    _speed += acc;
  }

}

@proxy
class CarProxy {

  final Car _car;

  CarProxy(this._car);

  @override
  noSuchMethod(Invocation invocation) {
      // TODO: implement noSuchMethod
      if (invocation.isMethod &&
          invocation.memberName == const Symbol('accelerate')) {

        var acc = invocation.positionalArguments[0];

        print("LOG: Accelerate car with ${acc}");

        _car.accelerate(acc);

      } else if(invocation.isGetter && 
                invocation.memberName == const Symbol('speed')) {
        var speed = _car.speed;

        print("LOG: The car speed is ${speed}");

        return speed;
      }

      return super.noSuchMethod(invocation);

    }

}