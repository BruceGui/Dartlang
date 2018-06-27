
library enumerated_type;

abstract class Enum<T> {

  final T value;

  const Enum(this.value);

  String toString() {

    return "${runtimeType.toString()}." +
      "${value == null ? 'null' : value.toString()}";

  }

}

class Third {
  final bool isActive;

  Third(value) :
    this.isActive = value != null ;
}