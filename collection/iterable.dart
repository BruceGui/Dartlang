
library iteralbe;

class BiListIterator<E> implements BidirectionalIterator {

  final Iterable<E> _iterable;
  final int _length;

  int _index;
  E _current;

  BiListIterator(Iterable<E> iterable, {bool back:false}) : 
    _iterable = iterable, _length = iterable.length,
    _index = back ? iterable.length - 1 : 0;

  E get current => _current;

  bool moveNext() {

    int length = _iterable.length;
    if (_length != length) {
      throw new ConcurrentModificationError(_iterable);
    }

    if (_index >= length) {
      _current = null;
      return false;
    }

    _current = _iterable.elementAt(_index);
    _index ++;

    return true;

  } 

  bool movePrevious() {

    int length = _iterable.length;
    if (length != _length) {
      throw new ConcurrentModificationError(_iterable);
    }

    if (_index < 0) {
      _current = null;
      return false;
    }

    _current = _iterable.elementAt(_index);
    _index --;

    return true;

  }

}

lazyIterable() {

  List nums = [1, 9, 93];

  print('Get Iteralbe for $nums');

  Iterable iterable = nums.where((i) {
    print('Fetched $i');
    return i.isOdd;
  });

  print('Start fetching');

}