import 'dart:io';

// first rit
class ListOfSum {
  // named parameter
  ListOfSum() {
    stdout.write('Enter Element size of list : ');
    int? number = int.parse(stdin.readLineSync()!);

    List<int> list = [];

    for (int i = 0; i < number; i++) {
      stdout.write('Enter ${i} element : ');
      list.insert(i, int.parse(stdin.readLineSync()!));
    }
    // return sum of all elements of list
    print("List : $list");
    int Sum = list.reduce((a, b) => a + b);
    print('SUM : $Sum');
  }
  // second rit

  // List<int> list = [1,2,3,4,5];
  // print("List : $list");
  // int Sum = list.reduce((a , b) => a + b );
  // print('SUM : $Sum');
}

void main() {
  ListOfSum Sum = ListOfSum();
}
