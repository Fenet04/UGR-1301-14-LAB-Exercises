void main() {

  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('Alice', () => 85);
  studentMarks.putIfAbsent('Bob', () => 90);
  studentMarks.putIfAbsent('Charlie', () => 75);

  print('Student names and their marks:');
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });

  String searchName = 'Alice';
  if (studentMarks.containsKey(searchName)) {
    print('\n$searchName\'s mark is ${studentMarks[searchName]}');
  } else {
    print('\n$searchName not found in the Map.');
  }
}
