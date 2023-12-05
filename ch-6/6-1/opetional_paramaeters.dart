import 'dart:io';

int sum(int a, int b, [int? c, int? d]) => a + b + (c ?? 0) + (d ?? 0);

void main() 
{
  int a, b, r;

  stdout.write("Enter a: ");
  a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter b: ");
  b = int.parse(stdin.readLineSync()!);

  r = sum(a, b);

  print("Sum of $a and $b : $r");
}