import 'dart:io';
void main()
{
  int a,b;

  stdout.write("enter a: ");
  a = int.parse(stdin.readLineSync()!);

  stdout.write("enter b: ");
  b = int.parse(stdin.readLineSync()!);

  try{
    print("ANS : ${a~/b}");
  }
  on FormatException {
    print("Invalid format !!");
  }
  catch (e) {
    print("Exception: $e");
  }

}