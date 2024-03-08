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

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(
      {required String name,
      required int age,
      required String address,
      required this.rollNumber,
      required this.marks})
      : super(name: name, age: age, address: address);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    return total / marks.length;
  }
}

void main() {

  Student student1 = Student(
      name: "Abebe",
      age: 20,
      address: "kirkos",
      rollNumber: 101,
      marks: [80, 75, 90, 85, 88]);

  Student student2 = Student(
      name: "Kebede",
      age: 22,
      address: "jemo",
      rollNumber: 102,
      marks: [70, 85, 65, 80, 75]);

 
  student1.printDetails();
  print("Roll Number: ${student1.rollNumber}");
  print("Total Marks: ${student1.calculateTotalMarks()}");
  print("Average Marks: ${student1.calculateAverageMarks()}");

  print("");

  student2.printDetails();
  print("Roll Number: ${student2.rollNumber}");
  print("Total Marks: ${student2.calculateTotalMarks()}");
  print("Average Marks: ${student2.calculateAverageMarks()}");
}
