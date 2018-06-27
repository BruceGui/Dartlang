
import 'dart:math';

printInteger(int aNumber) {
  print('The number is $aNumber');
}

abstract class Doer {
  void doSomething();
}

class EffectiveDoer extends Doer {
  
  void doSomething() {

  }

}

class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {

      return _cache[name];

    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;

    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }

}

class ImmutablePoint {
  static final ImmutablePoint origin = 
    const ImmutablePoint(0, 0);

    final num x, y;

    const ImmutablePoint(this.x, this.y);
}

class Point {
  num x;
  num y;

  Point(this.x, this.y);

  Point.alongXAxis(num x) : this(x, 0);

  num distanceTo(Point other) {

    var dx = x - other.x;
    var dy = y - other.y;

    return sqrt(dx*dx + dy*dy);

  }
}

class Vector {

  final int x, y;

  const Vector(this.x, this.y);

  Vector operator +(Vector v) {
    return Vector(x + v.x, y + v.y);
  }

  Vector operator -(Vector v) {
    return Vector(x - v.x, y - v.y);
  }

}

class Person {

  final _name;

  Person(this._name);

  String greet(String who) => 'Hello, $who, I am $_name.';

}

class Impostor implements Person {
  get _name => '';

  String greet(String who) => 'Hi $who, Do you know who I am?';
}


main(List<String> args) {
  var number = 90;

  var list = [22, 23, 90];

  var gifts = {
    'first': 'partridge',
    'second': 'trutledoves',
    'fifth': 'golden rings'
  };

  assert(gifts.length == 2);

  printInteger(number);
  list.forEach(printInteger);

  list.forEach(
    (item) => print('${list.indexOf(item)}: $item')
  );
  
  String greetBob(Person person) => person.greet('Bob');

  print(Person('Kathy'));
  print(greetBob(Impostor()));
}