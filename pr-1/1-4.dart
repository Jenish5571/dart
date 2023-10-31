import 'dart:io';

void main()
{
  int row,col;

    stdout.write("Enter row : ");
    row = int.parse(stdin.readLineSync()!);
    
    stdout.write("Enter column : ");
    col = int.parse(stdin.readLineSync()!);

    List materix1 = List.generate(row, (i) => List.generate(col , (j)=> i+j));
    List materix2 = List.generate(row, (i) => List.generate(col , (j)=> i+j));
    List result   = List.generate(row, (i) => List.generate(col , (j)=> i+j));

    for (int i = 0; i < row; i++) 
    {
      for (int j = 0; j < col; j++) 
      {
        stdout.write("Enter the elements of the first matrix:");
        materix1[i][j] = int.parse(stdin.readLineSync()!);
      }
    }

    for (int i = 0; i < row; i++) 
    {
      for (int j = 0; j < col; j++) 
      {
        stdout.write("Enter the elements of the second matrix:");
        materix2[i][j] = int.parse(stdin.readLineSync()!);
      }
    }

    for (int i = 0; i < row; i++) 
    {
      for (int j = 0; j < col; j++) 
      {
        result[i][j] = materix1[i][j] + materix2[i][j];
      }
    }

    stdout.write("The Sum Of Matrix Are:\n");
    for (int i = 0; i < row; i++) 
    {
      print(result[i]);
    }
}