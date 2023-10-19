import 'dart:io';

void main()
{
  int a;

  stdout.write("enter a number:");
  a = int.parse(stdin.readLineSync()!);

  print("cube:$a * $a *$a = ${ a * a * a}");

}