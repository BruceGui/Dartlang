
///
/// implement the Comparalbe interface.
/// and comparator type definition function.
/// 

library entity;

class Entity implements Comparable {

  final int index;

  get() => this.index;

  Entity(this.index); 

  int compareTo(Entity other) => this.index.compareTo(other.index);

  @override
  String toString() => index != null ? index.toString() : null;

}
