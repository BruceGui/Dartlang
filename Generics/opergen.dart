
part of assembly.room;

class Operation<E extends Car> implements Function {

  final String name;

  Operation(this.name);

  call(E car) {
    print('Make ${name} on ${car}');
  }

}