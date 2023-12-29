import 'dart:io';

void main()
{
  List<List<int>> array = List.generate(3, (index) => List<int>.filled(3, 0));

   for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array[i].length; j++) {
      stdout.write("Enter element at position ($i, $j): ");
      array[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print("\nOriginal Array:");
  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array[i].length; j++) {
      stdout.write("${array[i][j]} ");
    }
    print("");
  }

  var operation;
  do {
 print('Please enter the number of operation you want to perform:');
 print('1. Sum of all elements');
 print('2. Sum of specific row');
 print('3. Sum of specific column');
 print('4. Sum of diagonal elements');
 print('5. Sum of antidiagonal elements');

 stdout.write("Enter Your Choice:");
 int operation = int.parse(stdin.readLineSync()!);

 switch (operation) {
    case 1:
        int sum = 0;
        for (int i = 0; i < array.length; i++) {
          for (int j = 0; j < array[i].length; j++) {
            sum += array[i][j];
          }
        }
      print("\nSum of all elements: $sum");  
      break;
    case 2:
      stdout.write("\nEnter the row index (0-2) to find the sum: ");
      int rowIndex = int.parse(stdin.readLineSync()!);

      int rowSum = 0;
      for (int j = 0; j < array[rowIndex].length; j++) {
      rowSum += array[rowIndex][j];
      }
      print("\nSum of Row $rowIndex: $rowSum");
      break;
    case 3:
        stdout.write("\nEnter the column index (0-2) to find the sum: ");
        int colIndex = int.parse(stdin.readLineSync()!);  
        int colSum=0;
        for (int i = 0; i < array[colIndex].length; i++) {
        colSum += array[i][colIndex];
        }
        print("\nSum of Column $colIndex: $colSum");
        break;
    case 4:
        int diagonalSum = 0;
        for (int i = 0; i < array.length; i++) {
       diagonalSum += array[i][i];
       }
        print("\nSum of diagonal elements: $diagonalSum");
        break;

    case 5:
         int antidiagonalSum = 0;
         for (int i = 0; i < array.length; i++) {
        antidiagonalSum += array[i][2 - i];
        }
         print("\nSum of anti-diagonal elements: $antidiagonalSum");
         break;
    default:
        print("Invalid Choice");
        break;
      }
  }while(operation!=0);
}