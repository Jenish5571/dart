import 'dart:io';

class Employee 
{
  int? emp_id;
  String? emp_name;
  double? emp_salary;
  int? emp_age;

  void setData() {
    stdout.write("Enter employee Id: ");
    emp_id = int.parse(stdin.readLineSync()!);

    stdout.write("Enter employee Name: ");
    emp_name = stdin.readLineSync()!;

    stdout.write("Enter employee Salary: ");
    emp_salary = double.parse(stdin.readLineSync()!);

    stdout.write("Enter employee Age: ");
    emp_age = int.parse(stdin.readLineSync()!);
  }

  void getData() {
    print("\n\n\t -- Employee Data -- \n\n");
    print("| EMP_ID\tEMP_NAME\tEMP_SALARY\tEMP_AGE |");
    print("| ******\t********\t**********\t******* |\n");
    print("| $emp_id\t\t$emp_name\t\t$emp_salary\t\t$emp_age\t|\n");
    print("| ******\t********\t**********\t******* |\n");
  }
}

void main() 
{
  Employee object = Employee();

  object.setData();
  object.getData();
}