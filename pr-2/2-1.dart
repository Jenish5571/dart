import 'dart:io';

int add({required List<int> number}) 
{
  int Sum = 0; 

  for (int i = 0; i < number.length; i++) 
  {
    Sum += number[i];
  }
  return Sum;
}

void main() 
{
  List<int> array = [120,220,320,420,520];

  int Sum = add(number : array);

  print("Sum array list : $Sum");

}

