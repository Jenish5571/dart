import 'dart:io';

class Person 
{
  String? name;
  int? age;

  void inputPerson() 
  {
    stdout.write("Enter person NAME: ");
    name = stdin.readLineSync()!;

    stdout.write("Enter person AGE: ");
    age = int.parse(stdin.readLineSync()!);
    
  }

  void outputPerson() 
  {
    print("PERSON NAME : $name");
    print("PERSON AGE : $age");
  }
}

void main()
{
  Person person = Person();

  //cascade operator
  person
    ..inputPerson()
    ..outputPerson();
}
