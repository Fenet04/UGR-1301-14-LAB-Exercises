class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double findAverageMark() {
    if (marks.isEmpty) {
      return 0.0; 
    } else {
  
      int sum = marks.reduce((value, element) => value + element);

      return sum / marks.length;
    }
  }
}

void main() {

  Student student = Student('Alice', [80, 85, 90, 75, 88]);

  double averageMark = student.findAverageMark();
  print('${student.name}\'s average mark: $averageMark');
}
