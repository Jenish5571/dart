import 'dart:io';

void main()
{
  int a;
  int interest;

  stdout.write("enter amount:");
  a = int.parse(stdin.readLineSync()!);

  stdout.write("enter interest:");
  interest = int.parse(stdin.readLineSync()!);

  print("Total amount is: ${a + ((a * interest ) / 100 )}");

}
