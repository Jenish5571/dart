import 'dart:io';

class Student 
{
  int? roll_no;
  String? name;
  double? per;

  void setData() 
  {
    stdout.write("Enter student roll_no : ");
    roll_no = int.parse(stdin.readLineSync()!);

    stdout.write("Enter student Name: ");
    name = stdin.readLineSync()!;

    stdout.write("Enter student per : ");
    per = double.parse(stdin.readLineSync()!);
  }

  void getData() 
  {
    print("student roll_no\t\t: $roll_no");
    print("student name\t\t: $name");
    print("student per\t\t: $per");
  }
}

void main() 
{
  int n;

  stdout.write("Enter number of employes : ");
  n = int.parse(stdin.readLineSync()!);

  List objs = List.generate(n, (index) => Student());

  objs.forEach((e) {
    e.setData();
  });

  objs.forEach((e) {
    e.getData();
  });
}