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
  catch(e){
    print("ERROR : $e 🥱🥱");
  }

}