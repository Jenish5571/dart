import 'dart:io';

int add({required List<int> number}) {
  int Sum = 0;

  for (int i = 0; i < number.length; i++) {
    Sum += number[i];
  }
  return Sum;
}

void main() {
  List<int> list = [1, 2, 3, 4, 5];

  int Sum = add(number: list);

  print("Sum list : $Sum");
}
