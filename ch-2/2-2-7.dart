import 'dart:io';

void main()
{
  String name;
  String  Surname;

  stdout.write("enter name:");
  name = stdin.readLineSync()!;

  stdout.write("enter Surname:");
  Surname = stdin.readLineSync()!;

  print("Name: = ${name + Surname}");

}