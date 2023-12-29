import 'dart:io';

void main()
{
  int sum = 0;
  int choice = 0; 
  List<List<int>> size = List.generate(3, (index) => List.filled(3, 0));

  for (int i = 0; i < 3; i++) 
  {
    for (int j = 0; j < 3; j++) 
    {
      stdout.write("Enter array elements : ");
      size[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 3; i++) 
  {
    for (int j = 0; j < 3; j++) 
    {
      stdout.write("${size[i][j]} ");
    }
  }
 
  do 
  {
    print("enter the number of operation :");
    print("1. Sum of all elements");
    print("2. Sum of specific row");
    print("3. Sum of specific column");
    print("4. Sum of diagonal elements");
    print("5. Sum of antidiagonal elements");

    stdout.write("enter any choice :");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) 
    {
      case 1:
        for (int i = 0; i < 3; i++) 
        {
          for (int j = 0; j < 3; j++) 
          {
            sum += size[i][j];
          }
        }
        print("Sum of all elements: $sum");
        break;

      case 2:
        print("Enter the row number :");
        int row = int.parse(stdin.readLineSync()!);

        for (int j = 0; j < 3; j++) 
        {
          sum += size[row][j];
        }
        print("Sum of row : $sum");
        break;

      case 3:
        print("Enter the column number:");
        int col = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < 3; i++) 
        {
          sum += size[i][col];
        }
        print("Sum of column : $sum");
        break;

      case 4:
        int Diagonal = 0;
        for (int i = 0; i < 3; i++)
        {
          Diagonal += size[i][i];  
        }
        print("Sum of diagonal : $Diagonal ");
        break;

      case 5:
        int AntiDiagonal = 0;
        for (int i = 0; i < 3; i++)
        {
          AntiDiagonal += size[i][2-i];   
        }
        print("The Sum Of AntiDiagonal : $AntiDiagonal ");
        break;
    }       
  }while(choice !=0);
}