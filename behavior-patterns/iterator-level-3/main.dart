import 'words_collection.dart';

main() {
  var collection = new WordsCollection();
  collection.addItem("First");
  collection.addItem("Second");
  collection.addItem("Third");

  print("Straight traversal:");

  for (var element in collection.getItems()) {
    print(element);
  }

  print("\nReverse traversal:");

  collection.reverseDirection();

  for (var element in collection.getItems()) {
    print(element);
  }
}