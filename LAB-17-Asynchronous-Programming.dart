import 'dart:async';

Future<List<String>> loadDataFromDatabase() async {
  
  await Future.delayed(Duration(seconds: 2));

  List<String> data = ['John', 'Alice', 'Bob', 'Emily', 'Michael'];

  return data;
}

void main() async {

  print('Loading data from the database...');
  List<String> loadedData = await loadDataFromDatabase();

 
  print('Data loaded successfully:');
  loadedData.forEach((item) => print(item));
}
