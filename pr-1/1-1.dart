import 'dart:io';
void main() 
{
  List array=[];

  stdout.write("enter any number :");
  int length = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < length; i++)
  {
    stdout.write("Enter any elements:");
    array.add(int.parse(stdin.readLineSync()!));
  }

  List Negative=[];

  for(int i=0; i<length; i++)
  {
    if(array[i] < 0)
    {
      Negative.add(array[i]);
    }
  }
  print("Negative Elements: $Negative");
}  

