import 'dart:io';

void main() 
{
  int size;
  int opearation;
  List array=[];

    stdout.write("Enter your choice: ");
    size = int.parse(stdin.readLineSync()!);

    for(int i = 0; i < size; i++)
    {
      stdout.write("enter the ${i + 1} Elements: ");
      array.add(int.parse(stdin.readLineSync()!));
    }

    do
    {
      print("Menu:");
      print("1. Insert element");
      print("2. Delete element");
      print("3. Update element");
      print("4. View elements");
      print("5. Exit element");

      stdout.write("enter your oparation");
      opearation = int.parse(stdin.readLineSync()!);

      switch (opearation)
      {
        case 1:
          stdout.write("enter element insert: ");
          int element = int.parse(stdin.readLineSync()!);

          array.add(element);
          print("Insert element : $element successfully!");
          break;

        case 2:
          int Delete;

          stdout.write("delete number :");
          Delete = int.parse(stdin.readLineSync()!);

          array.remove(Delete);
          print("delete element : $Delete successfully!");
          break;

        case 3:
          int update;

          stdout.write("update number :");
          update = int.parse(stdin.readLineSync()!);

          array.add(update);
          print("update element : $update successfully!");
          break;

        case 4:
          print("elements in the array: $array");
          break;

        default:
          print("Invalid choice...");
          break;
      }

    }while (opearation !=5);   
  }