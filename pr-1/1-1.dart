import 'dart:io';
void main() 
{
  List array = [];
  List Negative = [];
  
  stdout.write("Enter array number :");
  int n = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < n; i++)
  {
    stdout.write("Enter any elements:");
    array.add(int.parse(stdin.readLineSync()!));
  }

  for(int i = 0; i < n; i++)
  {
    if(array[i] < 0)
    {
      Negative.add(array[i]);
    }
  }
  print("Negative Elements Numbers : $Negative ");
}  

