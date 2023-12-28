import 'dart:io';
void main() 
{
  List array=[];

  stdout.write("enter any number :");
  int n = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < n; i++)
  {
    stdout.write("Enter any elements:");
    array.add(int.parse(stdin.readLineSync()!));
  }

  var Big = array[0];

  for(int i = 0; i < n; i++)
  {
    if(Big < array[i])
    {
      Big = array[i];
    }
  }
  print("Big number : $Big");
}
