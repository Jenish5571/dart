import 'dart:io';

void main() {
 List<List<int>> matrix1 = List<List<int>>.generate(3, (i) => List<int>.generate(3, (j) => 0));
 List<List<int>> matrix2 = List<List<int>>.generate(3, (i) => List<int>.generate(3, (j) => 0));
 List<List<int>> result = List<List<int>>.generate(3, (i) => List<int>.generate(3, (j) => 0));


  stdout.write("enter any number :");
  int length = int.parse(stdin.readLineSync()!);


 for (int i = 0; i < length; i++) {
    for (int j = 0; j < length; j++) {
      stdout.write("Enter the elements of the first matrix:");
      matrix1[i][j] = int.parse(stdin.readLineSync()!);
    }
 }

 for (int i = 0; i < length; i++) {
    for (int j = 0; j < length; j++) {
      stdout.write("Enter the elements of the second matrix:");
      matrix2[i][j] = int.parse(stdin.readLineSync()!);
    }
 }

 for (int i = 0; i < length; i++) {
    for (int j = 0; j < length; j++) {
      result[i][j] = matrix1[i][j] + matrix2[i][j];
    }
 }

 stdout.write("The Sum Of Matrix Are:\n");
 for (int i = 0; i < length; i++) {
    print(result[i].join(' '));
    }
}