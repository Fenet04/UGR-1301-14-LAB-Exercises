class Person {
  String name;
  int age;
  String address;

  Person({required this.name, required this.age, required this.address});

  void printDetails() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

void main() {
 
  Person person1 = Person(name: "Abebe", age: 20, address: "kirkos");
  Person person2 = Person(name: "Kebede", age: 25, address: "jemo");

  print("Before modification:");
  person1.printDetails();
  print("");
  print("After modification:");
  person1.age = 35;
  person1.address = "789 Oak St";
  person1.printDetails();
}
