import 'dart:io';

void main() 
{
  List employees = [];

  for ( var i = 1; i <= 3; i++) 
  {
    print('Enter information for employee $i:');
    
    print('Enter ID: ');
    var id = stdin.readLineSync();

    print('Enter Name: ');
    var name = stdin.readLineSync();

    print('Enter Age: ');
    var age = int.parse(stdin.readLineSync()!); 
    
    print('Enter Salary: ');
    var salary = double.parse(stdin.readLineSync()!); 

    employees.add(MapEntry('Employee $i', 
    {
      'ID': id,
      'Name': name,
      'Age': age,
      'Salary': salary,
    }));
  }

  for (var entry in employees) 
  {
    print('\nEmployee ${entry.key} :');
    var employeeInfo = entry.value;

    employeeInfo.forEach((key, value) {
      print('$key: $value');
    });
  }
}
