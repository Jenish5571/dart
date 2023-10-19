import 'dart:io';

void main()
{
  int a;
  int b;

  stdout.write("enter a number:");
  a = int.parse(stdin.readLineSync()!);

  stdout.write("enter a number:");
  b = int.parse(stdin.readLineSync()!);

  print("Multiplication: $a * $b = ${a * b}");

}
