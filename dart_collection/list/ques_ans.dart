void main() {
  List<int> list = [3, 4, 5, 2, 2, 1, 3, 6, 7];
  MyCustomList myCustomList = MyCustomList(list: list);

  print('Sum of all elements : ${myCustomList.sumOfAllElements()}');

  myCustomList.removeDuplicates();
  print('Removed duplicates : $list');

  myCustomList.MaxAndMin();

  myCustomList.ascendingOrder();
  print('Ascending order : $list');
}

class MyCustomList {
  List<dynamic> list;

  MyCustomList({required this.list});

  // Write a Dart program to find the sum of all elements in a list of integers.

  double sumOfAllElements() {
    double sum = 0.0;
    list.forEach((element) {
      sum += element;
    });

    return sum;
  }

  // Write a Dart program to find the maximum and minimum elements in a list of integers.

  void MaxAndMin() {
    int max = -111111111;
    int min = 999999999;

    for (int element in list) {
      if (element > max) {
        max = element;
      }
      if (element < min) {
        min = element;
      }
    }
    print('Maximum number : $max');
    print('Minimum number : $min');
  }

  // Write a Dart program to remove all duplicates from a list of integers.
  void removeDuplicates() {
    Set set = list.toSet();
    list.clear();
    list.addAll(set.toList());
  }

  // Write a Dart program to sort a list of integers in ascending order.
  void ascendingOrder() {
    list.sort((a, b) => a.compareTo(b));
  }
}
