import 'dart:math';

void main() {
  
  List<int> randomNumbers = List.generate(20, (index) => Random().nextInt(20));

  print('List of random numbers:');
  print(randomNumbers);

  Set<int> uniqueNumbers = Set.from(randomNumbers);

  print('\nUnique numbers:');
  print(uniqueNumbers);
}
