
// The Main Dart Function

import 'collection/entity.dart';
import 'collection/iterable.dart';

main(List<String> args) {
  
	var first = new Entity(23),
	    second = new Entity(24);

	var list = [second, first];

	list.sort();

	print(list);

	// every return true if every ele satisfies the specified condition
	print(list.every((num) => num != null));

	print(list.any((num) => num == 2));

	lazyIterable();

	Iterator<int> listiter = list.iterator;

	while(listiter.moveNext()) {
		 print(listiter.current);
	}

	for (int i in list) {
		print(i);
	}

	BiListIterator biter = new BiListIterator(list, back: true);

	while(biter.movePrevious()) {
		print(biter.current);
	}

}