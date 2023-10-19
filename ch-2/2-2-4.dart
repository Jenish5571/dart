import 'dart:io';

void main()
{
  int Number,i;

  stdout.write("enter a number:");
  Number = int.parse(stdin.readLineSync()!);

  print("Multiplication Table:");

  for(i = 1; i<=10; i++)
  {
    print("$Number * $i : ${Number * i}");
  }

}