void main() {
  List<int> items = [1,2,3];

  print(items[0]); // 1
  print(items[1]); // 1
  print(items[2]); // 1

  print(items.length); // 3
  print(items.isEmpty); // false
  print(items.first); // 1
  print(items.last); // 3

  for (int item in items) {
    print(item);
  }

  items.forEach((e) {
    print(e);
  });
}