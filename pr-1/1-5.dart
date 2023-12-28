import 'dart:io';

void main()
{
  int sum = 0;
  int choice = 0; 
  List<List<int>> array = [];
 
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
            List<int> row = [];
            for (int j = 0; j < 3; j++) 
              {
                stdout.write("Enter row number and col number :");
                int num = int.parse(stdin.readLineSync()!);
                sum += num;
              }
              array.add(row);
          }
        }
        print("Sum of all elements: $sum");
        break;

      case 2:
        print("Enter the row number :");
        int row = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < 3; i++)
        {
          sum += row;
        }
        print("Sum of row : $sum");
        break;

      case 3:
        print("Enter the column number:");
        int col = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < 3; i++)
        {
          sum += col;
        }
        print("Sum of column : $sum");
        break;

      case 4:
        int Diagonal = 0;
        for (int i = 0; i < 3; i++)
        {
          for(int j = 0; j < 3; j++)
          {
            Diagonal += array[i][j];
          }  
        }
        print("Sum of diagonal : $Diagonal ");
        break;

      case 5:
        int AntiDiagonal = 0;
        for (int i = 0; i < 3; i++)
        {
          for (int j = 0; j < 3; j++)
          {
            if (i+j == ((3+1)-2))
            {
              AntiDiagonal += array[i][j];
            }
          }
        }
        print("The Sum Of Anti-Diagonal : $AntiDiagonal ");
        break;
    }       
  }while(choice !=0);
}