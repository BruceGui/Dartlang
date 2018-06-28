
add(a, b)=> a + b;

reduce(a, b) => a - b;

chooser(bool operation) => operation ? add : reduce;

executor(operation, x, y) => operation(x, y);

var operations = [add, reduce];

calculate(base) {
  var count = 1;

  return () => print("Value is ${base + count++}");
}

void main(List<String> args) {

  //var operation = add;
  var result = executor(add, 100, 3.2);
  var f = calculate(2);
  f();
  f();
  print("Result is ${result}");

}