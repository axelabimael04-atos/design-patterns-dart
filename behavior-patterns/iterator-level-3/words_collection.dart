import 'alphabetical_order_iterator.dart';
import 'iterator_aggregate.dart';

class WordsCollection extends IteratorAggregate {
  List<String> _collection = [];

  bool _direction = false;

  void reverseDirection() {
    _direction = !_direction;
  }

  List<String> getItems() {
    return _collection;
  }

  void addItem(String item) {
    this._collection.add(item);
  }

  @override
   getEnumerator() {
    return new AlphabeticalOrderIterator(this, reverse: _direction);
  }
}