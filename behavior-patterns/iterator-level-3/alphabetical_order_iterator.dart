import 'iterator.dart';
import 'words_collection.dart';

class AlphabeticalOrderIterator extends CustomIterator {
  WordsCollection? collection;

  int _position = -1;

  bool reverse = false;

  AlphabeticalOrderIterator(
    this.collection, {
    this.reverse = false,
  })
  {
    if (this.reverse) {
      this._position = this.collection!.getItems().length;
    }
  }

  @override
   current() {
    return this.collection!.getItems()[_position];
  }

  @override
  int key() {
    return this._position;
  }

  @override
  bool moveNext() {
    int updatedPosition = this._position + (this.reverse ? -1 : 1);

    if (updatedPosition >= 0 &&
        updatedPosition < this.collection!.getItems().length) {
      this._position = updatedPosition;
      return true;
    } else {
      return false;
    }
  }

  @override
  void reset() {
    this._position = this.reverse ? this.collection!.getItems().length - 1 : 0;
  }
}
