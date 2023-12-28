import 'dart:io';

void main() 
{
  int n;
  int opearation;
  List array=[];

    stdout.write("Enter number choice: ");
    n = int.parse(stdin.readLineSync()!);

    for(int i = 0; i < n; i++)
    {
      stdout.write("enter the ${i + 1} Elements: ");
      array.add(int.parse(stdin.readLineSync()!));
    }
    
    print("Menu:");
    print("1. Insert element");
    print("2. Delete element");
    print("3. Update element");
    print("4. View elements");
    print("5. Exit element");

    stdout.write("enter number oparation :");
    opearation = int.parse(stdin.readLineSync()!);

    switch (opearation)
    {
      case 1:
        stdout.write("enter element insert: ");
        int element = int.parse(stdin.readLineSync()!);

        array.add(element);
        print("Insert element sucessfully : $element");
        break;

      case 2:
        int Delete;

        stdout.write("delete number :");
        Delete = int.parse(stdin.readLineSync()!);

        array.remove(Delete);
        print("delete element sucessfully : $Delete");
        break;

      case 3:
        int update;

        stdout.write("update number :");
        update = int.parse(stdin.readLineSync()!);

        array.add(update);
        print("update element sucessfully : $update");
        break;

      case 4:
        print("elements in the array: $array");
        break;

      default:
        print("Invalid choice...");
        break;
    }
}