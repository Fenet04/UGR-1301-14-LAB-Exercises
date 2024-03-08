void main() {
  
  List<String> favoriteHobbies = ['Reading', 'Sleeping', 'Cooking', 'Movies'];

  print('Initial list of favorite hobbies: $favoriteHobbies');

  favoriteHobbies.add('Painting');
  print('After adding a new hobby: $favoriteHobbies');

  favoriteHobbies.remove('Hiking');
  print('After removing a hobby: $favoriteHobbies');

  favoriteHobbies.sort();
  print('After sorting the list: $favoriteHobbies');

  bool isEmpty = favoriteHobbies.isEmpty;
  print('Is the list empty? $isEmpty');
}
