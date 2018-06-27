
part of assembly.room;

class AssemblyLine  <E extends Car> {

  List<E> _item = [];

  AssemblyLine() {

  }

  add(E item) {
    _item.insert(0, item);
  }

  make(operation) {
    _item.forEach((E item) => operation(item));
  }

}